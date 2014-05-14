json.array!(@phones) do |phone|
  json.extract! phone, :id, :user_id, :phone
  json.url phone_url(phone, format: :json)
end
