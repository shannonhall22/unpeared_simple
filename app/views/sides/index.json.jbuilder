json.array!(@sides) do |side|
  json.extract! side, :id, :found_id, :item_id, :name
  json.url side_url(side, format: :json)
end
