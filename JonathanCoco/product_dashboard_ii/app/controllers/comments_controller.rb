class CommentsController < ApplicationController
  def  index
    @comments = Comment.all()
    
  end
  def create
    @comment  = Comment.new(comment_params)

    if @comment.save()
      redirect_to "/products/#{@comment.product_id}"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :product_id)
  end
end
