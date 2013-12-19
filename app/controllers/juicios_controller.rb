class JuiciosController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    comment = product.tasks.create!(params.require(:task).permit(:email, :name, :content))
    render json: comment
  end
end
