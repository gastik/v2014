json.array!(@user_animals) do |user_animal|
  json.extract! user_animal, :id, :user_profiles_id, :animals_id, :load
  json.url user_animal_url(user_animal, format: :json)
end
