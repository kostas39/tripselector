class City < ApplicationRecord
  # has_many :activities

  # belongs_to :city_journey

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
