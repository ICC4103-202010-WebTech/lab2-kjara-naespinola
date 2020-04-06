class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :tickets
end
