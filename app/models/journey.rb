class Journey < ApplicationRecord
  belongs_to :user
  has_many :city_journeys, dependent: :destroy
  has_many :cities, through: :city_journeys
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :country, presence: true
  validates :tag, presence: true
end
