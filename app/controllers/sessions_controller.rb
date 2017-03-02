class SessionsController < ApplicationController
#log in
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      #log in code
      session[:user_id] = user.id

      # redirect code
      redirect_to posts_url, notice: 'Login Successful!'
    else
      #wrong email/password
      render text: 'Wrong Login'
    end
  end

#log out
  def destroy
    session[:user_id] = nil
  end

end
