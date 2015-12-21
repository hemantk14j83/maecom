json.array!(@selected_items) do |selected_item|
  json.extract! selected_item, :id, :product_id, :cart_id
  json.url selected_item_url(selected_item, format: :json)
end
