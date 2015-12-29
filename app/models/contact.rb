class Contact < ActiveRecord::Base
	validates :name,:email,:presence=>true
	scope :by_status, -> status { where(status: status) }
  	scope :recent, -> {order("contacts.created_at ASC")}
end
