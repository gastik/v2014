json.array!(@deseases) do |desease|
  json.extract! desease, :id, :description
  json.url desease_url(desease, format: :json)
end
