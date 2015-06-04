class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find params[:id]
  end

  def update
  end

  def delete
  end

  def create
  end

  def index
  end

  def exit
  end
end
