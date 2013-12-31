json.array!(@coaches) do |coach|
  json.extract! coach, :id, :name, :active_seasons
  json.url coach_url(coach, format: :json)
end
