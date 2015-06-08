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

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

end
