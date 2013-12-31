json.array!(@opponents) do |opponent|
  json.extract! opponent, :id, :school_name
  json.url opponent_url(opponent, format: :json)
end
