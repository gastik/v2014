json.array!(@animal_types) do |animal_type|
  json.extract! animal_type, :id, :description
  json.url animal_type_url(animal_type, format: :json)
end
