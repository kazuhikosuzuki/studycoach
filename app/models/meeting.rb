class Meeting < ApplicationRecord
  validates :category, presence: true
  validates :start_time, presence: true
  validates :finish_time, presence: true

  belongs_to :user
end
