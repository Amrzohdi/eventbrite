class Vanue < ApplicationRecord
  validates_presence_of :longitude, :latitude
end
