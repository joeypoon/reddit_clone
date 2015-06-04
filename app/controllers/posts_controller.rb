class PostsController < ApplicationController
  def new
  end

  def show
  end

  def create
  end

  def delete
  end

  def update
  end

  def edit
  end

  def index
    @posts = Post.all
  end

  def upvote
    @post = Post.find params[:id]
    @post.votes += 1

    if @post.save
      redirect_to root_path
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
