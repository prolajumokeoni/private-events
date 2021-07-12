class Event < ApplicationRecord
  
  has_many :registers
  belongs_to :creator, class_name: "User"
  has_one_attached :event_photo

  scope :upcoming, -> { where('date >= ?', Time.zone.now) }
  scope :previous, -> { where('date < ?', Time.zone.now) }
end
