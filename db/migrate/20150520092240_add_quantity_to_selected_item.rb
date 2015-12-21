class AddQuantityToSelectedItem < ActiveRecord::Migration
  def change
    add_column :selected_items, :quantity, :integer, :default => 1
  end
end
