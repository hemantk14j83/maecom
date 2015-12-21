class Product < ActiveRecord::Base
	has_many :selected_items

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
