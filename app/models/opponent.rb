class Opponent < ActiveRecord::Base
  has_many :games
  validates :school_name, presence: true, uniqueness: true
end
