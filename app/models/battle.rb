class Battle < ActiveRecord::Base
  skip_time_zone_conversion_for_attributes = []

  has_many :battle_matchups
  has_many :the_randoms, :through => :battle_matchups do
    def left
      reload unless loaded?
      proxy_target[0]
    end
      
    def right
      reload unless loaded?
      proxy_target[1]
    end
  end

  def to_s
    
  end
end
