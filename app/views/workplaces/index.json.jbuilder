json.array!(@workplaces) do |workplace|
  json.extract! workplace, :id, :types_id, :DoctorCount, :name
  json.url workplace_url(workplace, format: :json)
end
