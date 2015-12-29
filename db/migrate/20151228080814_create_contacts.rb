class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, :limit=>100
      t.string :email
      t.string :phone, :limit=>12
      t.string :topics
      t.text :message
      t.string :status, :default=>"open"
      t.datetime :replied_at

      t.timestamps null: false
    end
  end
end
