class TheRandom < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true

  def image_filename
    "#{friendly_id}.png"
  end
end
