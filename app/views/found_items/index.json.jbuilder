json.array!(@found_items) do |found_item|
  json.extract! found_item, :id, :name, :desc, :category, :image1, :image2, :image3
  json.url found_item_url(found_item, format: :json)
end
