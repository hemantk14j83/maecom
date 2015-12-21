class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :sub_category
      t.string :type
      t.string :brand
      t.string :image_url
      t.text :description
      t.string :offer_test
      t.string :sales_package
      t.text :features
      t.string :disclaimer
      t.decimal :offer_price
      t.decimal :base_price
      t.decimal :dealer_price
      t.decimal :shipping_cost
      t.integer :quantity_limit
      t.string :unit_type
      t.string :vendor_id
      t.string :status
      t.string :uploaded_by
      t.timestamp :updated_on
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
