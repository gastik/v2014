json.array!(@user_workplaces) do |user_workplace|
  json.extract! user_workplace, :id, :user_profiles_id, :workplaces_id, :Name, :DoctorCount
  json.url user_workplace_url(user_workplace, format: :json)
end
