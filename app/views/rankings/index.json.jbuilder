json.array!(@rankings) do |ranking|
  json.extract! ranking, :id, :ranking
  json.url ranking_url(ranking, format: :json)
end
