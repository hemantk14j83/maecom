class Product < ActiveRecord::Base
	has_many :selected_items

	validates :title, :category, :sub_category, :brand, :image_url, :description, :sales_package, :disclaimer, :offer_price, :base_price, :dealer_price, :shipping_cost, :quantity_limit, :unit_type, :vendor_id, :status, :presence => true
	before_destroy :ensure_not_in_selected_item

	def ensure_not_in_selected_item
		if selected_items.count.zero?
			return true
		else
			errors.add(:base, 'This is added in cart')
			return false
		end
	end
end
