class TheRandom < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true

  has_many :battle_matchups
  has_many :battles, :through => :battle_matchups

  def image_filename
    "#{friendly_id}.png"
  end

  def to_s
    name
  end
end
