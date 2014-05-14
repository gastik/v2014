json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :name, :surname, :sex, :user_id
  json.url user_profile_url(user_profile, format: :json)
end
