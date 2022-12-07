class Journey < ApplicationRecord
  belongs_to :user
  has_many :city_journeys
  has_many :cities, through: :city_journeys
  # geocoded_by :name
  # after_validation :geocode, if: :will_save_change_to_name?

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :country, presence: true
  validates :tag, presence: true
end
