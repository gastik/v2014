json.array!(@user_animal_types) do |user_animal_type|
  json.extract! user_animal_type, :id, :user_profiles_id, :anymal_types_id, :load
  json.url user_animal_type_url(user_animal_type, format: :json)
end
