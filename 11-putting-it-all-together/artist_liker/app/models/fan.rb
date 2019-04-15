class Fan < ActiveRecord::Base
  has_many :fandoms
  has_many :artists, through: :fandoms

  validates :name, presence: true

  def self.all_names
    self.all.map {|fan| fan.name}
  end

  def greet
    "Hey, I'm #{self.name}"
  end
end
