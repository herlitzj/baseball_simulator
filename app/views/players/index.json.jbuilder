json.array!(@players) do |player|
  json.extract! player, :id, :team_id, :first_name, :last_name, :hand, :player_type, :durability, :dldays, :run, :steal, :jump, :bat, :bunt, :wild
  json.url player_url(player, format: :json)
end
