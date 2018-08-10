module EventsHelper

  def form_action_name
    @event.id.present? ? "Edit Event" : "Create Event"
  end
end
