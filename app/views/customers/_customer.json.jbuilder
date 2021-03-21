json.extract! customer, :id, :name, :portrait, :created_at, :updated_at
json.url customer_url(customer, format: :json)
json.portrait url_for(customer.portrait)
