require 'rails_helper'


class TestUberConcern
  include UberConcern
end

RSpec.describe UberConcern do
  describe 'estimate cost' do
    it "rest client should called with git with specific params" do
      url = "start_latitude=1&start_longitude=2&&end_latitude=3&end_longitude=4"
      expect(RestClient).to receive(:get).with("#{ENV['UBER_API_URL']}#{url}", Authorization: "Token #{ENV['UBER_API_TOKEN']}")
      TestUberConcern.new.uber_estimate_cost("1","2", "3","4")
    end
  end
end
