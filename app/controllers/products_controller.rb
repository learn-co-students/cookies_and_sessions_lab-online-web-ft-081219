class ProductsController < ApplicationController
  def index 
    @cart = cart #refrencing cart method in application controller
  end
  
  def add
    session[:cart] = cart
    session[:cart] << params[:product]
    redirect_to '/'
  end
end
