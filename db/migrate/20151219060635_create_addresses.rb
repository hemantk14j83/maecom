class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address
      t.string :landmark
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact
      t.string :status,:default=>'default'
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :addresses, :users
  end
end
