class RestaurantsController < ApplicationController
  load_and_authorize_resource
  def index
		@q = Restaurant.ransack(params[:q])
		@restaurants = @q.result
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params.require(:restaurant).permit!)
		if @restaurant.save
			redirect_to admin_restaurants_path
		else
			render :new, status: 422
		end
	end

	def show
		@restaurant = Restaurant.find(params.require(:id))
		@foods = @restaurant.foods
	end
end