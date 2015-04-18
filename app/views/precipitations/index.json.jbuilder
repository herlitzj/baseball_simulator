json.array!(@precipitations) do |precipitation|
  json.extract! precipitation, :id, :location_id, :month, :precip, :min, :max
  json.url precipitation_url(precipitation, format: :json)
end
