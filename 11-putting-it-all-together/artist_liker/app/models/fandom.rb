class Fandom < ActiveRecord::Base
  belongs_to :artist
  belongs_to :fan

  validates :fan_id, presence: true
  validates :artist_id, presence: true
end
