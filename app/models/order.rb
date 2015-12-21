class Order < ActiveRecord::Base
	has_many :selected_items, :dependent => :destroy
	validates :name, :address, :presence => true
	
	def add_selected_items_from_cart(cart)
		cart.selected_items.each do |item|
			item.cart_id=nil
			selected_items << item
		end
	end

	def total_amount
  		selected_items.to_a.sum{|item| item.total_price + item.product.shipping_cost}
  	end
end
