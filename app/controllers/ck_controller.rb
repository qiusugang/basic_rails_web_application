class CkController < ActionController::Base

  def verify_authenticity_token
    logger.info "## verify_authenticity_token"
    true
  end
end
