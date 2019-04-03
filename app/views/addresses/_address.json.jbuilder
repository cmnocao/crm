json.extract! address, :id, :line_1, :city, :country, :type, :postcode, :customer_id, :created_at, :updated_at
json.url address_url(address, format: :json)
