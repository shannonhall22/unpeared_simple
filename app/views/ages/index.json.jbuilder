json.array!(@ages) do |age|
  json.extract! age, :id, :found_id, :item_id, :name
  json.url age_url(age, format: :json)
end
