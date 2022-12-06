class Journey < ApplicationRecord
  belongs_to :user
  has_many :city_journeys
  has_many :cities, through: :city_journeys

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
end
