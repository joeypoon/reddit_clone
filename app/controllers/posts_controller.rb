class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
    @user = User.find @post.user_id
  end

  def create
    @post = Post.new post_params
    @post.votes = 0

    if @post.save
      redirect_to post_path(id: @post.id, title: @post.title)
    else
      render :new
    end
  end

  def delete
    @post = Post.find params[:id]
    @post.destroy

    @posts = Post.all
    redirect_to root_path
  end

  def update
  end

  def edit
  end

  def index
    @posts = Post.all
  end

  def up_vote
    @post = Post.find params[:id]
    @post.votes += 1

    if @post.save
      redirect_to root_path
    end
  end

  def down_vote
    @post = Post.find params[:id]
    @post.votes -= 1

    if @post.save
      redirect_to root_path
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
