json.array!(@winds) do |wind|
  json.extract! wind, :id, :stadium_id, :month, :wind, :min, :max
  json.url wind_url(wind, format: :json)
end
