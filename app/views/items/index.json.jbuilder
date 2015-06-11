json.array!(@items) do |item|
  json.extract! item, :id, :name, :desc, :price, :found, :category, :image1, :image2, :image3, :user_id
  json.url item_url(item, format: :json)
end
