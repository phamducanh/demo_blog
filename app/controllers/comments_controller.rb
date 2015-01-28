class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "Comment created!"
    else
      flash[:danger] = "Comment can not be blank"
    end
    redirect_to :back
  end

  private

  	def comment_params
  		params.require(:comment).permit(:user_id, :entry_id, :content)
  	end
end
