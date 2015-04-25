json.array!(@games) do |game|
  json.extract! game, :id, :home_team, :away_team, :date, :time, :location, :stadium, :wind, :temperature, :sky, :precipitation
  json.url game_url(game, format: :json)
end
