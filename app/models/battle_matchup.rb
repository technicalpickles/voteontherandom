class BattleMatchup < ActiveRecord::Base
  skip_time_zone_conversion_for_attributes = []
  
  belongs_to :battle
  belongs_to :the_random

  has_many :votes
end
