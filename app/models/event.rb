class Event < ApplicationRecord
  belongs_to :user
  has_one :venue, dependent: :destroy
  accepts_nested_attributes_for :venue

  validates_presence_of :venue, :start_date, :end_date
end
