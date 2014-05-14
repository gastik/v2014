json.array!(@jobtitles) do |jobtitle|
  json.extract! jobtitle, :id, :description
  json.url jobtitle_url(jobtitle, format: :json)
end
