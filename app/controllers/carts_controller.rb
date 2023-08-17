class CartsController < ApplicationController
    load_and_authorize_resource except: [:q_increase, :q_decrease, :destroy, :add_to_cart]
    
    def index
    end

    def add_to_cart
        food = Food.find(params[:id])
        current_user.cart.products.create(name:food.name,price:food.price,quantity:1)
        redirect_back(fallback_location: root_path)
    end

    def destroy
        current_user.cart.products.find(params[:id]).destroy
        redirect_back(fallback_location: root_path)
    end

    def q_increase
        prod = current_user.cart.products.find(params[:id])
        prod_qty = prod.quantity
        prod.update(quantity: prod_qty+1)
        redirect_back(fallback_location: root_path)
    end

    def q_decrease
        prod = current_user.cart.products.find(params[:id])
        prod_qty = prod.quantity
        prod.update(quantity: prod_qty-1)
        redirect_back(fallback_location: root_path)
    end
end