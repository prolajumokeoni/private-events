class Event < ApplicationRecord
  has_many :registers
  belongs_to :creator, class_name: 'User'
  has_one_attached :event_photo

  has_many :attendees, through: :registers, source: :user
  scope :upcoming_events, -> { where('day >= ?', Date.today) }
  scope :previous_events, -> { where('day < ?', Date.today) }
end
