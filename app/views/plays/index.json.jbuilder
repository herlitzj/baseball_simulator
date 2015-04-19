json.array!(@plays) do |play|
  json.extract! play, :id, :player_id, :vs_hand, :min, :max, :play, :field, :fatigue
  json.url play_url(play, format: :json)
end
