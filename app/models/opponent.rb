class Opponent < ActiveRecord::Base
  validates :school_name, presence: true, uniqueness: true
end
