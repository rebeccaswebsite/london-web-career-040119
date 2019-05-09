class Doctor < ApplicationRecord
  validates :name,  presence: true
  validates :specialty,  presence: true
  has_many :patients, dependent: :destroy
end
