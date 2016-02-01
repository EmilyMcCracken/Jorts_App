class SessionsController < ApplicationController
  def new
	end

	def create
		@user = User.where(username: params[:username]).first     
		 if @user && @user.authenticate(params[:password_digest])
		 session[:user_id] = @user.id
		 redirect_to @user
		 flash[:notice] = "logged in"
		else
		flash[:notice] = "please try again!"
		redirect_to login_path
		end
	end

	def create_admin
		@admin = Admin.where(username: params[:username]).first     
		if @admin && @admin.authenticate(params[:password_digest])
			session[:admin_id] = @admin.id
			redirect_to root_path
			flash[:notice] = "logged in"
		else
			flash[:notice] = "please try again!"
			redirect_to login_path
		end
	end

	def destroy
		if logged_in? || logged_in_admin?
		session[:user_id] = nil
		session[:admin_id] = nil
		redirect_to root_path
		flash[:notice] = "logged out"
		else
		flash[:notice] = "someting went wrong"
		redirect_to root_path

		end
	end
end
