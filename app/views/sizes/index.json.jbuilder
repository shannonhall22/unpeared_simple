json.array!(@sizes) do |size|
  json.extract! size, :id, :found_id, :item_id, :name
  json.url size_url(size, format: :json)
end
