json.array!(@distances) do |distance|
  json.extract! distance, :id, :stadium_id, :wind_direction, :lfl, :lf, :lc, :cf, :rc, :rf, :rfl
  json.url distance_url(distance, format: :json)
end
