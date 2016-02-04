class UserNotifier < ApplicationMailer

	default :from => 'support@jorts.com'

	# send a signup email to the user, pass in the user object that   contains the user's email address
	def send_signup_email(user)
	    @user = user
	    mail( :to => @user.email,
	    :subject => 'Welcome to Jorts!' )
  	end

end
