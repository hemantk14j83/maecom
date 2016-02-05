class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.references :product, index: true
      t.references :user, index: true
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :wishlists, :products
    add_foreign_key :wishlists, :users
  end
end
