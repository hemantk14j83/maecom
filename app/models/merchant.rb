class Merchant < ActiveRecord::Base

	validates :company,:city,:pincode, :poc_name, :poc_phone, :poc_designation, :poc_email,:reason, :presence=>true
	scope :by_status, -> status { where(status: status) }
  	scope :recent, -> {order("merchants.created_at DESC")}
end
