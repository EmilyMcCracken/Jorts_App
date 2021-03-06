class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # @profile = User.find(params[:id])
    # @user 
   if @user.profile != nil
    if @user.profile.address != nil
        @hash = Gmaps4rails.build_markers(@user) do |user, marker|
          marker.lat user.profile.latitude
          marker.lng user.profile.longitude
          marker.infowindow user.username 
        end  
      end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    # @user.ip_address = request.remote_ip
    # The above pulled ip_address of user and put into their profile. Revist once we go live.

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        # Below sends a user an email on sign up. CUrrently recieving and undefined method merge error
        # UserNotifier.send_signup_email(@user).deliver
        format.html { redirect_to new_profile_path, notice: 'User was successfully created.' }
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
    respond_to do |format|
      if logged_in_admin? || @user.id == current_user.id
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else 
        flash[:notice] = "You do not have access to do that!"  
      end  
    end
  end


  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    session[:user_id] = nil
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
    
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end
end
