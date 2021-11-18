json.extract! product, :id, :id, :sku, :title, :price, :quantity, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
