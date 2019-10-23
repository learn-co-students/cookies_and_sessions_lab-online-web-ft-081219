class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def cart 
    
    session[:cart] ||= []   
  end

  def add_item_to_cart 
    cart << params.permit("product")["product"]
    session[:cart] = cart
    @cart = session[:cart]
    render "carts/index"
  end

  # def index
  #   p "Im am here"
  #   @cart = session[:cart] 
  #   render "products/index"
  # end

  def root 
    render "carts/new"
  end
end
