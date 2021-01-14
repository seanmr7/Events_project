class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User", foreign_key: "event_creator_id"
  has_many :event_attends
  has_many :attendees, through: :event_attends
end