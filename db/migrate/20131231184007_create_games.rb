class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.integer :ut_score
      t.integer :opponent_score
      t.integer :season_id
      t.integer :opponent_id
      t.integer :location_id
      t.integer :ut_rank
      t.integer :opponent_rank
      t.integer :result_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
