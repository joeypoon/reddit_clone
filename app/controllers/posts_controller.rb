class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
    @user = @post.user
    @comments = @post.comments
  end

  def create
    @post = Post.new post_params
    @post.user = current_user

    if @post.save
      redirect_to post_path(id: @post.id, title: @post.title)
    else
      render :new
    end
  end

  def delete
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def update
    @post = current_user.posts.find(params[:id])
    @post.title = post_params[:title]
    @post.content = post_params[:content]
    if @post.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
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

  def link_out
    @post = Post.find params[:id]
    @post.votes += 1
    if @post.save
      redirect_to @post.content
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
