require 'rails_helper'

RSpec.describe Venue, type: :model do

  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:latitude) }

end
