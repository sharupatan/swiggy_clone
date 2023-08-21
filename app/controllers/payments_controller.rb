class PaymentsController < ApplicationController
  def new
  end
  
  def create
    customer = Stripe::Customer.create({
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    })
    
    # charge = Stripe::Charge.create({
    #   :customer => customer.id,
    #   :amount => 600,
    #   :description => 'Description of your product',
    #   :currency => 'usd'
    # })

    current_user.cart.products.destroy_all
    redirect_to restaurants_path
  
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_payment_path
  end
end