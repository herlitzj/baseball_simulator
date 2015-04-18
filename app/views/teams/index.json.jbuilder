json.array!(@teams) do |team|
  json.extract! team, :id, :location_id, :city, :name, :league
  json.url team_url(team, format: :json)
end
