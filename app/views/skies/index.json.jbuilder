json.array!(@skies) do |sky|
  json.extract! sky, :id, :location_id, :month, :sky, :min, :max
  json.url sky_url(sky, format: :json)
end
