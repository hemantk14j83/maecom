json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone, :address, :city, :state, :zip
  json.url order_url(order, format: :json)
end
