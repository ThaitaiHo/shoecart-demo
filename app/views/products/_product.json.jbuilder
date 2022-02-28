json.extract! product, :id, :name, :description, :price, :float, :created_at, :updated_at
json.url product_url(product, format: :json)
