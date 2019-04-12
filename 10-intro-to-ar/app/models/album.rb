class Album < ActiveRecord::Base
  belongs_to :artist
  
  validates :title, presence: true
  validates :artist_id, presence: true
  # validates(:title, {presence: true})
end

# Model: Album <=> albums
