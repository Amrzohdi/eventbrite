module EventsHelper

  def form_action_name
    @event.id.present? ? "Edit Event" : "Create Event"
  end


  def view_date_time(date_time)
    date_time.strftime("%A, %d %B %Y at %I:%M %p")
  end
end
