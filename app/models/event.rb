class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User", foreign_key: "event_creator_id"
end