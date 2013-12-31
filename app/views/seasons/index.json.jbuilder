json.array!(@seasons) do |season|
  json.extract! season, :id, :season
  json.url season_url(season, format: :json)
end
