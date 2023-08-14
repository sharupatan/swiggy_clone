module ApplicationHelper
	def restaurant_names
		@restaurant_names = Restaurant.all.map{ |item| [item.name,item.id] }
	end
end
