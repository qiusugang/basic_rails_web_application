class RolesController < ApplicationController
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  # GET /roles
  # GET /roles.json
  def index
    @roles = Role.all
    @credentials = Credential.all
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
    @rules = Rule.find_by_sql(["select rules.* from rules,roles_rules where roles_rules.rule_id=rules.id and roles_rules.role_id=?", @role.id])
    @exclude_rules = Rule.find_by_sql(["select rules.* from rules where rules.id not in (select rule_id from roles_rules where role_id=?)", @role.id])
  end

  def build_credentials
    roles = Role.all
    credentials = Credential.all
    credentials.each do |credential|
      Rails.cache.delete(credential.match)
    end
    Credential.delete_all
    roles.each do |role|
      ids = [role.id]
      repeat_role(role.id, ids)
    end
    redirect_to "/roles/"
  end
  
  # GET /roles/new
  def new
    @role = Role.new
  end

  # GET /roles/1/edit
  def edit
  end

  def remove
    RolesRule.where('role_id=? and rule_id=?',params[:id],params[:rule_id]).delete_all()
    redirect_to "/roles/#{params[:id]}", notice: "Role's rule was successfully removed."
  end

  def add
    role_rules = RolesRule.new
    role_rules.role_id = params[:id]
    role_rules.rule_id = params[:rule_id]
    role_rules.created_at = Time.new
    role_rules.updated_at = Time.now
    role_rules.save
    redirect_to "/roles/#{params[:id]}", notice: "Role's rule was successfully added."
  end

  # POST /roles
  # POST /roles.json
  def create
    @role = Role.new(role_params)

    respond_to do |format|
      if @role.save
        format.html { redirect_to @role, notice: 'Role was successfully created.' }
        format.json { render :show, status: :created, location: @role }
      else
        format.html { render :new }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1
  # PATCH/PUT /roles/1.json
  def update
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to @role, notice: 'Role was successfully updated.' }
        format.json { render :show, status: :ok, location: @role }
      else
        format.html { render :edit }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'Role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_params
      params.require(:role).permit(:name, :description, :parent_id)
    end
    
    def repeat_role(role_id, ids)
      role = Role.find(role_id)
      if role 
        credentials = Rule.find_by_sql(["select rules.*, roles_rules.role_id from roles_rules,rules where roles_rules.rule_id=rules.id and roles_rules.role_id=?", role_id])
        if credentials.size > 0
          credentials.each do |credential|
            ids.each do |id|
              if credential.action_name == '*'
                str_express = credential.controller_name.titleize + "Controller.action_methods"
                begin
                  action_set = eval(str_express)
                  actions = action_set.to_a
                  actions.each do |the_action|
                    match_key =  "#{credential.controller_name}##{the_action}##{id}"
                    if Credential.find_by('match': match_key)==nil
                      item = Credential.new
                      item.match = match_key
                      item.params = credential.params
                      item.created_at = Time.now()
                      item.updated_at = Time.now()
                      item.save
                    end
                  end
                rescue
                  logger.info "Error express: #{str_express}"
                end
              else
                match_key =  "#{credential.controller_name}##{credential.action_name}##{id}"
                if Credential.find_by('match': match_key)==nil
                  item = Credential.new
                  item.match = match_key
                  item.params = credential.params
                  item.created_at = Time.now()
                  item.updated_at = Time.now()
                  item.save
                end
              end
            end
          end
        else

        end
        if role.parent_id > 0
          ids << role.parent_id
          repeat_role(role.parent_id, ids)
        end
      end
    end
end
