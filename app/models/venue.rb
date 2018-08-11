class Venue < ApplicationRecord
  validates_presence_of :longitude, :latitude
end
