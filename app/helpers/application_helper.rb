module ApplicationHelper
	def restaurant_names
		@restaurant_names = Restaurant.all.map{ |item| [item.name,item.id] }
	end

	def cart_items_count
		current_user.cart ? current_user.cart.products.length : 0
	end

	def render_items_data(food)
		content_tag(:td,food.id)+
		content_tag(:td,food.name)+
		content_tag(:td,food.price)+
		content_tag(:td,food.status)+
		content_tag(:td,food.restaurant.name)
	end

	def render_items_headers
		content_tag(:th,'Id')+
		content_tag(:th,'Name')+
		content_tag(:th,'Price')+
		content_tag(:th,'Status')+
		content_tag(:th,'Restaurant Name')+
		content_tag(:th,'Actions')
	end
end
