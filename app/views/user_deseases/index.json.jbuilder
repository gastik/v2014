json.array!(@user_deseases) do |user_desease|
  json.extract! user_desease, :id, :user_profiles_id, :deaseases_id
  json.url user_desease_url(user_desease, format: :json)
end
