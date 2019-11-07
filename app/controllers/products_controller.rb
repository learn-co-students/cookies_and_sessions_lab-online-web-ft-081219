class ProductsController < ApplicationController
    def index
        @cart = cart
    end 
    
    def add
        session[:cart] = cart
        cart << params[:product]
        render :index
    end

end 