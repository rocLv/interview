class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    debugger
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :body,
                   :commentable_type, :commentable_id)
    end
end
