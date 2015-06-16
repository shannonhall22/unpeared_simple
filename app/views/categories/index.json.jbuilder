json.array!(@categories) do |category|
  json.extract! category, :id, :found_id, :item_id, :name
  json.url category_url(category, format: :json)
end
