class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email
      t.string :product_category, :limit=>100
      t.string :business_type, :limit=>100
      t.string :is_seller, :limit=>100
      t.string :cod_available, :limit=>100
      t.text :address
      t.string :proprietor_name
      t.string :pan_no, :limit=>50
      t.string :tin_no, :limit=>50
      t.string :status, :limit=>50
      t.text :comments
      t.string :payment_method
      t.string :currency_code, :limit=>20
      t.string :credit_days, :limit=>50
      t.string :return_period, :limit=>50
      t.text :return_term
      t.string :created_by, :limit=>150
      t.datetime :created_at
      t.string :updated_by, :limit=>150
      t.datetime :updated_at
      t.string :manager_email
      t.string :poc_name
      t.string :poc_contact
      t.string :payable_name

      t.timestamps null: false
    end
  end
end
