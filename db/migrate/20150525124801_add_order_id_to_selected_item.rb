class AddOrderIdToSelectedItem < ActiveRecord::Migration
  def change
    add_column :selected_items, :order_id, :integer
  end
end
