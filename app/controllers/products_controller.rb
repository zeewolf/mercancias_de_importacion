class ProductsController < ApplicationController
  LIMIT_PER_PAGE = 10

  def index
    page = params[:page].to_i || 1
    render :json => Product.limit(LIMIT_PER_PAGE).offset((page - 1) * LIMIT_PER_PAGE)
  end

  def show
    @product = Product.find(param[:id])
    @comments = @product.juicios
  end
end
