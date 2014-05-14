json.array!(@animals) do |animal|
  json.extract! animal, :id, :description
  json.url animal_url(animal, format: :json)
end
