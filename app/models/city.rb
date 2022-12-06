class City < ApplicationRecord
  # has_many :activities
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  # belongs_to :city_journey


  has_many :city_journeys
  has_many :journeys, through: :city_journeys

  validates :latitude,
            presence: true
  validates :longitude,
            presence: true
  validates :name,
            presence: true
  validates :country,
            presence: true
  validates :continent,
            presence: true
  validates :region,
            presence: true
end
