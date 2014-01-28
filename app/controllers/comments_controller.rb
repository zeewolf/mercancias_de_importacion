class CommentsController < ApplicationController
  def index
    render json: product.comments
  end

  def create
    @comment = Comment.create!(params.require(:comment).permit(:email, :name, :content))
    product.comments << @comment
    render json: @comment, status: 201
  end

  private
  def product
    @product = Product.find(params[:product_id])
  end
end
