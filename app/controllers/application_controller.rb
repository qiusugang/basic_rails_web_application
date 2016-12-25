class ApplicationController < ActionController::Base
  #protect_from_forgery with: :null_session
  before_action :authorization_rules
  helper_method :is_admin?

  protected  
  def set_charset
    content_type = headers["Content-Type"] || 'text/html'
    if /^text\/html/.match(content_type)
      headers["Content-Type"] = "text/html; charset=utf-8"
    end
    headers["Keep-Alive"] = "timeout=60, max=256"
  end

  def authorization_rules
    set_charset
    logger.info("  * Authorization filter for #{controller_name}##{action_name}")

    if is_public?
      return true
    end
    # return true

    session_user = session[:user]
    auth_result = false

    if session_user
      match_key =  "#{controller_name}##{action_name}##{session_user['role_id']}"
      auth_param =  Rails.cache.read(match_key)
      if auth_param  == nil || ''== auth_param
        credential = Credential.find_by('match': match_key)
        if credential
          Rails.cache.write(match_key, credential.params)
          auth_result = eval(credential.params)
          logger.debug("  * Authorization parameters: #{credential.params} = #{auth_result}")
        else
          auth_result = false
        end
      else
        auth_result = eval(auth_param)
        logger.debug("  * Authorization parameters: #{auth_param} = #{auth_result}")
      end
    end

    if !auth_result
      redirect_to "/users/login", notice: 'You have not permission for that page'
      false
    else
      true
    end
  end

  def is_public?
    controllers =  Rails.cache.read('public_controller')
    if controllers == nil
      controllers = Setting.get_values('public_controller')
      Rails.cache.write('public_controller', controllers)
    end

    if controllers.include?(controller_name)
      true
    else
      actions =  Rails.cache.read('public_action')
      if actions == nil
        actions = Setting.get_values('public_action')
        Rails.cache.write('public_action', actions)
      end
      match_key =  "#{controller_name}##{action_name}"
      actions.include?(match_key)
    end
  end

  def is_admin?
    if session[:user]
      if [2, 3].include?(session[:user]['role_id'])
        return true
      end
    end
    false
  end

end
