json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :location_id, :month, :time, :temp, :min, :max
  json.url temperature_url(temperature, format: :json)
end
