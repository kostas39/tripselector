class CityJourney < ApplicationRecord
  belongs_to :journey
  belongs_to :city

  validates :start_date,
            presence: true
  validates :end_date,
            presence: true
end
