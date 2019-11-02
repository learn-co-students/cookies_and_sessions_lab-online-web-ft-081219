class ProductsController < ApplicationController
    def index
        @cart = cart
    end

    def add
        cart << params.permit(:product)[:product]
        redirect_to action:'index'
    end
end