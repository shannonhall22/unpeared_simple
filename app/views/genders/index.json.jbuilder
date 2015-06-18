json.array!(@genders) do |gender|
  json.extract! gender, :id, :found_id, :item_id, :name
  json.url gender_url(gender, format: :json)
end
