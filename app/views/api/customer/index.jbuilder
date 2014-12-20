json.customers @customers do |customer|
  json.(customer, :id, :name, :address)
end
