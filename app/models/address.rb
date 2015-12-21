class Address < ActiveRecord::Base
  belongs_to :user

  validates :address, :city, :state, :zip, presence: true
end
