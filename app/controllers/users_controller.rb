class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def update
    @user = current_user

    if @user && @user.authenticate(user_params[:password])
      @user.update_attributes user_params
      redirect_to edit_user_path(current_user), notice: 'Account updated successfully'
    else
      redirect_to edit_user_path(current_user), alert: 'Incorrect password'
    end
  end

  def delete
    current_user.posts.destroy_all
    current_user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Account successfully deleted.'
  end

  def edit
    @user = current_user
  end

  def create
    user = User.new user_params
    if user.save
      login user
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
