json.array!(@games) do |game|
  json.extract! game, :id, :date, :ut_score, :opponent_score, :season_id, :opponent_id, :location_id, :ut_rank, :opponent_rank, :result_id, :coach_id
  json.url game_url(game, format: :json)
end
