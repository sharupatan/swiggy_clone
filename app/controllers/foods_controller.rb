class FoodsController < ApplicationController
	load_and_authorize_resource except: [:create]

	def index
	end

	def new
		@food = Food.new
	end

	def create
		@food = Food.new(params.require(:food).permit!)
		if @food.save
			redirect_to foods_path
		else
			render :new, status: 422
		end
	end

	def destroy
		@food = Food.find(params[:id]).destroy
		redirect_to admin_foods_path
	end
end