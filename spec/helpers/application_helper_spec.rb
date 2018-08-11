require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do

  describe 'resource_name' do
    it "should render sympol user" do
      expect(helper.resource_name).to eq(:user)
    end
  end

  describe 'resource' do
    it 'should return new user' do
      expect(helper.resource).to be_a_new(User)
    end
  end

  describe 'devise_mapping' do
    it 'should return Devise.mappings' do
      expect(helper.devise_mapping).to eq(Devise.mappings[:user])
    end
  end



end
