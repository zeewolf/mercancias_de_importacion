class ProductsController < ApplicationController
  LIMIT_PER_PAGE = 10

  def index
    page = params[:page].to_i || 1
    @products = Product.limit(LIMIT_PER_PAGE).offset((page - 1) * LIMIT_PER_PAGE)
    render :json => @products if params[:page].present?
  end

  def show
    @product = Product.find(params[:id])
  end
end
