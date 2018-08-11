require 'rails_helper'


RSpec.describe EventsHelper, type: :helper do

  describe 'form name' do
    it "should render Create Event" do
      assign(:event, Event.new)
      expect(helper.form_action_name).to eq("Create Event")
    end
    it "should render Edit Event" do
      assign(:event, Event.new(id: 1))
      expect(helper.form_action_name).to eq("Edit Event")
    end
  end

  describe 'date time view' do
    it 'should return specific format of date with time' do
      date_time = DateTime.now
      expect(helper.view_date_time(date_time)).to eq(date_time.strftime("%A, %d %B %Y at %I:%M %p"))
    end
  end

end
