class Vendor < ActiveRecord::Base
	scope :by_status, -> status { where(status: status) }
  	scope :recent, -> {order("vendors.created_at ASC")}
end
