class Artist < ActiveRecord::Base
  has_many :fandoms
  has_many :fans, through: :fandoms

  validates :name, presence: true
end
