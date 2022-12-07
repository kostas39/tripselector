class Journey < ApplicationRecord
  belongs_to :user
  has_many :city_journeys, dependent: :destroy
  has_many :cities, through: :city_journeys
<<<<<<< HEAD
  # geocoded_by :name
  # after_validation :geocode, if: :will_save_change_to_name?
=======
>>>>>>> 33ef866f2a45c8e0242338008daeacf68bfe939b

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :country, presence: true
  validates :tag, presence: true
end
