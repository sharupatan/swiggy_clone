module ApplicationHelper
	def restaurant_names
		@restaurant_names = Restaurant.all.map{ |item| [item.name,item.id] }
	end

	def cart_items_count
		current_user.cart ? current_user.cart.products.length : 0
	end
end
