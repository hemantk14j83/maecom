class Cart < ActiveRecord::Base
	has_many :selected_items, :dependent => :destroy

	def add_product(product_id)
    current_item = selected_items.where(:product_id => product_id).first
    if current_item
      current_item.quantity +=1
    else
    	current_item = selected_items.build(:product_id => product_id)
    end
    current_item
  end

  def total_price
  	selected_items.to_a.sum{|item| item.total_price + item.product.shipping_cost}
  end
end
