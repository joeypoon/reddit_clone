class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      login user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination.'
      render :new
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
