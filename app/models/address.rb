class Address < ActiveRecord::Base
  belongs_to :user

  validates :address, :city, :state, :zip, presence: true

  scope :by_user, -> user { where(user_id: user) }	
end
