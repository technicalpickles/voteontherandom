class Battle < ActiveRecord::Base
  skip_time_zone_conversion_for_attributes = []

  has_many :battle_matchups do
    def left
      reload unless loaded?
      proxy_target[0]
    end
      
    def right
      reload unless loaded?
      proxy_target[1]
    end
  end
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

  def vote_on_side!(side)
    return unless side =~ /^(left|right)$/
    battle_matchups.send(side).votes.create
  end

  def to_s
    "#{the_randoms.left} versus #{the_randoms.right}"
  end
end
