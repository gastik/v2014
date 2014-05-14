json.array!(@user_addresses) do |user_address|
  json.extract! user_address, :id, :user_profile_id, :countries_id, :City, :State, :Zip, :Address1, :Address2
  json.url user_address_url(user_address, format: :json)
end
