class RestaurantsController < ApplicationController
  load_and_authorize_resource except: [:create]
  def index
		@q = Restaurant.ransack(params[:q])
		@restaurants = @q.result
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(require_permitted_params)
		if @restaurant.save
			redirect_to restaurants_path
		else
			render :new, status: 422
		end
	end

	def show
		@restaurant = Restaurant.find(params.require(:id))
		@foods = @restaurant.foods
	end

	def destroy
		Restaurant.find(params.require(:id)).destroy
		redirect_to restaurants_path
	end

	private

	def require_permitted_params
		params.require(:restaurant).permit(:name,:description,:address,:email,:number,:founder_name)
	end
end