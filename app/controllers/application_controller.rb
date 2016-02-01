class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :logged_in?
  helper_method :current_admin, :logged_in_admin?
  
    def current_user
  		if session[:user_id]
		@current_user = User.find(session[:user_id])
		end
	end

	 def current_admin
  		if session[:admin_id]
		@current_admin = Admin.find(session[:admin_id])
		end
	end

	def logged_in?
       current_user != nil
       # if current_smuggler does not equal nil this returns true. Same for the tycoon version.
  	end
        
  	def logged_in_admin?
       current_admin != nil
  	end
end
