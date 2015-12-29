class SelectedItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	belongs_to :cart

	scope :by_cart, -> cart { where(cart_id: cart) }
	scope :by_order, -> order { where(order_id: order) }		
	def total_price
		product.offer_price * quantity
	end
	#def self.from_cart_item(cart_item)
    #	li = self.new
    #	li.product     = cart_item.product
    #	li.quantity    = cart_item.quantity
    #	li.total_price = cart_item.price
    #	li
  	#end%
end
