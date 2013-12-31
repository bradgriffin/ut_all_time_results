class Ranking < ActiveRecord::Base
  validates :ranking, presence: true, uniqueness: true
end
