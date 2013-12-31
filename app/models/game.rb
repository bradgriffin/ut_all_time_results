class Game < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true
  validates :ut_score, presence: true
  validates :opponent_score, presence: true
  validates :season_id, presence: true
  validates :opponent_id, presence: true
  validates :location_id, presence: true
  validates :ut_rank, presence: true
  validates :opponent_rank, presence: true
  validates :result_id, presence: true
  validates :coach_id, presence: true
end
