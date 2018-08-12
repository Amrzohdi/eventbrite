require 'rails_helper'

RSpec.describe Event, type: :model do

  it {should belong_to(:user)}
  it {should have_one(:venue).dependent(:destroy)}
  it {should validate_presence_of(:venue)}
  it {should validate_presence_of(:start_date)}
  it {should validate_presence_of(:end_date)}

end
