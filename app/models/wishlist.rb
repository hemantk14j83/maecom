class Wishlist < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  scope :by_status, -> status { where(status: status) }
  scope :recent, -> {order("wishlist.created_at DESC")}

  validates_uniqueness_of :product_id, :scope=> :user_id
end
