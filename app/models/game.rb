class Game < ActiveRecord::Base
  belongs_to :season
  belongs_to :opponent
  belongs_to :location
  belongs_to :result
  belongs_to :coach
  belongs_to :ut_ranking, class_name: "Ranking", foreign_key: "ut_rank"
  belongs_to :opponent_ranking, class_name: "Ranking", foreign_key: "opponent_rank"

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
