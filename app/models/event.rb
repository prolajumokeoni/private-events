class Event < ApplicationRecord
  belongs_to :user
  has_many :registers

  has_one_attached :event_photo
end
