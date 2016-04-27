json.array!(@monsters) do |monster|
  json.extract! monster, :id, :name, :type_id, :team_id, :user_id
  json.url monster_url(monster, format: :json)
end
