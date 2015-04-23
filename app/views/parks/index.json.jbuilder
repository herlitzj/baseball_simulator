json.array!(@parks) do |park|
  json.extract! park, :id, :stadium_id, :field_option, :min, :max
  json.url park_url(park, format: :json)
end
