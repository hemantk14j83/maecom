class CreateSelectedItems < ActiveRecord::Migration
  def change
    create_table :selected_items do |t|
      t.integer :product_id
      t.integer :cart_id

      t.timestamps null: false
    end
  end
end