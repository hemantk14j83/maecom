class ChangePhoneTypeInOrders < ActiveRecord::Migration
  def change
	change_column :orders, :phone, :string
  end
end
