require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'venue validation' do
    it { should validate_presence_of(:venue) }
  end

  describe 'start_date validation' do
    it { should validate_presence_of(:start_date) }
  end

  describe 'end_date validation' do
    it { should validate_presence_of(:end_date) }
  end
end
