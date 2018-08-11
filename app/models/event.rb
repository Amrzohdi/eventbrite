class Event < ApplicationRecord
  belongs_to :user
  has_one :vanue, dependent: :destroy
  accepts_nested_attributes_for :vanue

  validates_presence_of :vanue, :start_date, :end_date
end
