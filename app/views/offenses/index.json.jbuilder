json.array!(@offenses) do |offense|
  json.extract! offense, :id, :player_id, :vs_hand, :ifr, :ofr, :df, :power
  json.url offense_url(offense, format: :json)
end
