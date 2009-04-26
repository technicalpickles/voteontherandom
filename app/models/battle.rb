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

  has_many :votes, :through => :battle_matchups

  def vote_on_side!(side, session_id)
    return unless side =~ /^(left|right)$/
    vote = votes.find_by_session_id(session_id)
    if vote
      vote.update_attributes(:battle_matchup => battle_matchups.send(side))
    else
      battle_matchups.send(side).votes.create(:session_id => session_id)
    end
  end

  def to_s
    "#{the_randoms.left} versus #{the_randoms.right}"
  end

  def self.not_voted_on_by(session_id)
    Battle.all.reject do |battle|
      battle.votes.find_by_session_id('ae1ecabf52ed2e3fa8bad0e0b29002f0')
    end
  end

  def self.next_to_vote_on_by(session_id)
    not_voted_on_by(session_id).rand
  end


end
