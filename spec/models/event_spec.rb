require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'vanue validation' do
    it { should validate_presence_of(:vanue) }
  end

  describe 'start_date validation' do
    it { should validate_presence_of(:start_date) }
  end

  describe 'end_date validation' do
    it { should validate_presence_of(:end_date) }
  end
end
