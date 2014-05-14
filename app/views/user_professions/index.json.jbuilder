json.array!(@user_professions) do |user_profession|
  json.extract! user_profession, :id, :jobtitles_id, :PracticeSince, :roles_id, :user_profiles_id
  json.url user_profession_url(user_profession, format: :json)
end
