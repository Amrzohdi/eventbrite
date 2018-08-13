class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :estimate_cost]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

  include UberConcern

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  def estimate_cost
    begin
      render json: uber_estimate_cost(params['st_lat'], params['st_lng'], @event.venue.latitude, @event.venue.longitude)
    rescue RestClient::Exception => err
      render json: JSON.parse(err.response)['message'], status: :unprocessable_entity
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params.merge(user: current_user))
    respond_to do |format|
      if @event.save
        format.html {redirect_to @event}
      else
        format.html {render :new}
        format.json {render json: @event.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html {redirect_to @event, notice: 'Event was successfully updated.'}
        format.json {render :show, status: :ok, location: @event}
      else
        format.html {render :edit, status: :unprocessable_entity}
        format.json {render json: @event.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html {redirect_to events_url, notice: 'Event was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :description, :price).merge(venue_attributes: venue_params)
  end

  def venue_params
    params.require(:venue).permit(:id, :name, :longitude, :latitude)
  end
end