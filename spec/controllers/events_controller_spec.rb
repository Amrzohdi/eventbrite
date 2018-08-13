require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET index" do

    it "populates an array of events" do
      event = FactoryBot.create(:event)
      get :index
      assigns(:events).should eq([event])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

  end

  describe "GET new" do
    it "renders the new template" do
      sign_in
      get :new
      expect(assigns(:event)).to be_a_new(Event)
    end
  end

  describe "GET estimate_cost" do
    it "should call uber_estimate_cost with the given lng and lat" do
      sign_in
      event = FactoryBot.create(:event)
      expect_any_instance_of(UberConcern).to receive(:uber_estimate_cost).with('30.013', '31.1944',
                                                                               event.venue.latitude, event.venue.longitude)
      get :estimate_cost, params: {id: event.id, st_lat: '30.013', st_lng: '31.1944'}
    end

    it "should handle exceptions of rest client" do
      sign_in
      event = FactoryBot.create(:event)
      allow_any_instance_of(UberConcern).to receive(:uber_estimate_cost).and_raise(RestClient::Exception.new('{"message": "Distance between two points exceeds 100 miles"}'))
      get :estimate_cost, params: {id: event.id}
      expect(response.status).to eq(422)
    end
  end

  describe "create event" do
    it "should events count be increased by 1" do
      sign_in FactoryBot.create(:user)
      event_params = FactoryBot.attributes_for(:event)
      venue_params = FactoryBot.attributes_for(:venue)
      expect {post :create, params: {event: event_params, venue: venue_params}}.to change(Event, :count).by(1)
    end

    it "event will not be saved" do
      sign_in FactoryBot.create(:user)
      event_params = FactoryBot.attributes_for(:event)
      expect {post :create, params: {event: event_params, venue: {start_date: ""}}}.to change(Event, :count).by(0)
    end

  end

  describe "destroy event" do
    it "event should be destroyed" do
      sign_in user = FactoryBot.create(:user)
      event = FactoryBot.create(:event, user: user)
      expect {delete :destroy, params: {id: event.id}}.to change(Event, :count).by(-1)
    end
  end

  describe "update event" do
    it "update event start date" do
      sign_in user = FactoryBot.create(:user)
      event = FactoryBot.create(:event, user: user)
      new_start_date = DateTime.now
      put :update, params: {id: event.id, venue: {id: event.venue.id, name: nil}, event: {start_date: new_start_date}}
      expect(Event.first.start_date.to_i).to eq(new_start_date.to_i)
    end

    it "venue latitude can't be blank" do
      sign_in user = FactoryBot.create(:user)
      event = FactoryBot.create(:event, user: user)
      put :update, params: {id: event.id, venue: {id: event.venue.id, latitude: nil}, event: {id: event.id}}
      expect(assigns(:event).errors.messages).to be_present
      expect(Event.first.venue.latitude).not_to be_nil
    end

  end
end
