json.array!(@facebooklinks) do |facebooklink|
  json.extract! facebooklink, :id, :name, :url
  json.url facebooklink_url(facebooklink, format: :json)
end
