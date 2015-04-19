json.array!(@defenses) do |defense|
  json.extract! defense, :id, :player_id, :position, :error, :rnge, :throw, :passedball, :pickoff, :hold, :wp, :balk, :bfsp, :bfrp, :rest0, :rest1, :rest2, :rest3
  json.url defense_url(defense, format: :json)
end
