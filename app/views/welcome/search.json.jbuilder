json.customers do
  json.array!(@customers) do |customer|
    json.name customer.full_name
    json.url  customer_path(customer)
  end
end

json.addresses do
  json.array!(@addresses) do |address|
    json.name address.full_address
    json.url  customer_address_path(address.customer, address)
  end
end
