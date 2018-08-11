require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET index" do

    it "populates an array of contacts" do
      contact = Event.new
      get :index
      assigns(:contacts).should eq([contact])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end


  end


end
