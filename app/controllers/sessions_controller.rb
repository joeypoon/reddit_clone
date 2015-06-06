class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      login user
      redirect_to root_path
    else
      redirect_to login_path, alert: 'Invalid email/password combination.'
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end

  private

    def session_params
      params.require(:session).permit(:email, :password)
    end

end
