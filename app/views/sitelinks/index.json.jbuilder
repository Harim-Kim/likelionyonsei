json.array!(@sitelinks) do |sitelink|
  json.extract! sitelink, :id, :name, :url
  json.url sitelink_url(sitelink, format: :json)
end
