class Journey < ApplicationRecord
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
end
