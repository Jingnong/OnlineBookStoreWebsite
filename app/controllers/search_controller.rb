class SearchController < ApplicationController
  include CurrentCart
  before_action :set_cart

  skip_before_action :authorize

  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order(:name)
    else
      @products = Product.order(:name)
    end
  end

end
