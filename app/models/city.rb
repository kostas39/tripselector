class City < ApplicationRecord
  # has_many :activities
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
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
