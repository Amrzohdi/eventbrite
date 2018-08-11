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
    it "should call uber_estimate_cost with params" do
      sign_in
      event = FactoryBot.create(:event)
      expect_any_instance_of(UberConcern).to receive(:uber_estimate_cost).with('30.013606499999995', '31.1944935').and_return({})
      get :estimate_cost, params: {id: event.id, st_lat: '30.013606499999995', st_lng: '31.1944935'}
    end
  end

  describe "create event" do
    it "should events count be increased by 1" do
      sign_in FactoryBot.create(:user)
      event_params = FactoryBot.attributes_for(:event)
      venue_params = FactoryBot.attributes_for(:venue)
      expect { post :create, params: {event: event_params, venue: venue_params} }.to change(Event, :count).by(1)
    end

    it "event will not be saved" do
      sign_in FactoryBot.create(:user)
      event_params = FactoryBot.attributes_for(:event)
      expect { post :create, params: {event: event_params, venue: {start_date: ""}} }.to change(Event, :count).by(0)
    end

  end

end
