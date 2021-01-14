class Event < ApplicationRecord
  scope :past_events, -> { where('date < ?', Date.current) }
  scope :upcoming_events, -> { where('date > ?', Date.current) }
  
  belongs_to :event_creator, class_name: "User", foreign_key: "event_creator_id"
  has_many :event_attends
  has_many :attendees, through: :event_attends
end