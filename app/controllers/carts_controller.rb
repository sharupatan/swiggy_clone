class CartsController < ApplicationController
    load_and_authorize_resource except: [:create]
    
    def index
    end

    def q_increase
        prod = current_user.cart.products.find(params[:id])
        prod_qty = prod.quantity
        prod.update(quantity: prod_qty+1)
        redirect_to carts_path
    end

    def q_decrease
        prod = current_user.cart.products.find(params[:id])
        prod_qty = prod.quantity
        prod.update(quantity: prod_qty-1)
        redirect_to carts_path
    end
end