class Ranking < ActiveRecord::Base
  has_many :games, foreign_key: "ut_rank"
  has_many :games, foreign_key: "opponent_rank"
  validates :ranking, presence: true, uniqueness: true
end
