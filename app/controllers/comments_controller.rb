class CommentsController < ApplicationController
  def create
    if Comment.create(comment_params)
      redirect_to product_path(params[:product_id])
    else
      render product_path(params[:product_id])
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
