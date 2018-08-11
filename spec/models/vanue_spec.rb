require 'rails_helper'

RSpec.describe Vanue, type: :model do
  describe 'longitude validation' do
    it { should validate_presence_of(:longitude) }
  end

  describe 'latitude validation' do
    it { should validate_presence_of(:latitude) }
  end

end