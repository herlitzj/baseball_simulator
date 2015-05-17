json.array!(@lineups) do |lineup|
  json.extract! lineup, :id, :game_id, :team_id, :player_id, :position, :inning_in, :inning_out
  json.url lineup_url(lineup, format: :json)
end
