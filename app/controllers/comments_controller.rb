class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new comment_params
    @comment.user_id = current_user.id
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to post_path(id: params[:post_id], title: (Post.find(params[:post_id])).title)
    else
      flash.now[:alert] = 'Error: Comment not created.'
      render :new
    end
  end

  def edit
    @comment = current_user.comments.find params[:id]
  end

  def delete
    comment = current_user.comments.find params[:id]
    comment.destroy
  end

  def up_vote
    @comment = Comment.find params[:id]
    @comment.votes += 1
    if @comment.save
      redirect_to post_path(id: @comment.post.id, title: @comment.post.title.parameterize)
    end
  end

  def down_vote
    @comment = Comment.find params[:id]
    @comment.votes -= 1
    if @comment.save
      redirect_to post_path(id: @comment.post.id, title: @comment.post.title.parameterize)
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

end
