json.array!(@stadia) do |stadium|
  json.extract! stadium, :id, :location_id, :team_id, :stadium, :lfl, :lf, :lc, :cf, :rc, :rf, :rfl
  json.url stadium_url(stadium, format: :json)
end
