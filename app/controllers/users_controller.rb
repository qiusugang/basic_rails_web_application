class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    TestJob.perform_later("This is test")
    # cache_value = Rails.cache.read('permission')
    # if cache_value == nil || ''== cache_value
    #   Rails.cache.write('permission', "test")
    # end
    @users = User.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    @user.role_id = 4
  end

  def login
    if request.method == 'POST'
      name = params[:user_login]
      password = params[:user_password]
      @user = User.find_user(name, password)
      if @user
        session[:user] = @user
        redirect_to @user, notice: 'Login success...'
      end
    end
  end

  def logout
    reset_session
    redirect_to "/", notice: 'Logout success...'
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    user_fields = user_params
    salt = User.create_random
    user_fields['encrypt_password'] = User.sha1(user_fields['encrypt_password'], salt)
    user_fields['password_salt'] = salt
    user_fields['role_id'] = 4
    @user = User.new(user_fields)

    respond_to do |format|
      if @user.save
        session[:user] = @user
        NotifierMailer.welcome_email(@user).deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    user_fields = user_params
    if user_params['encrypt_password'] && user_params['encrypt_password'].strip != ''
      salt = User.create_random
      user_fields['encrypt_password'] = User.sha1(user_fields['encrypt_password'], salt)
      user_fields['password_salt'] = salt
    else
      user_fields.delete('encrypt_password')
      user_fields.delete('password_salt')
    end

    respond_to do |format|
      if @user.update(user_fields)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :gender, :age, :avatar, :role_id, :encrypt_password, :password_salt, :email)
    end
end
