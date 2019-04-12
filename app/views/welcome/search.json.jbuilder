json.customers do
  json.array!(@customers) do |customer|
    json.name customer.full_name
    json.url  customer_path(customer)
  end
end

json.addresses do
  json.array!(@addresses) do |address|
    json.name address.full_address
    json.url  customer_path(address.customer)
  end
end

json.phones do
  json.array!(@phones) do |phone|
    json.name phone.number
    json.url  customer_path(phone.customer)
  end
end
