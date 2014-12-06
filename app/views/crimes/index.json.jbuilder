json.array!(@crimes) do |crime|
  json.extract! crime, :id, :description
  json.url crime_url(crime, format: :json)
end
