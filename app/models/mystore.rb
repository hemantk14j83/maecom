class Mystore < ActiveRecord::Base
	scope :by_vendor, -> vendor { where(vendor_id: vendor) }
end