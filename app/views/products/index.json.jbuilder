json.array!(@products) do |product|
  json.extract! product, :id, :title, :category, :sub_category, :type, :brand, :image_url, :description, :offer_test, :sales_package, :features, :disclaimer, :offer_price, :base_price, :dealer_price, :shipping_cost, :quantity_limit, :unit_type, :vendor_id, :status, :uploaded_on, :uploaded_by, :updated_on, :updated_by
  json.url product_url(product, format: :json)
end
