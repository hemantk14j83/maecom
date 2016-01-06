class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :company, :limit=>200
      t.text :address
      t.string :city,:limit=>100
      t.string :state,:limit=>100
      t.string :country, :limit=>100
      t.string :pincode, :limit=>20
      t.string :pan_number, :limit=>30
      t.string :tin_number, :limit=>100
      t.string :interested_category
      t.string :listing_fee
      t.text :description
      t.string :fulfillment, :limit=>100
      t.string :poc_name, :limit=>200
      t.string :poc_designation, :limit=>150
      t.string :poc_email
      t.string :poc_phone, :limit=>15
      t.string :status, :default => 'pending approval'
      t.text :reason

      t.timestamps null: false
    end
  end
end
