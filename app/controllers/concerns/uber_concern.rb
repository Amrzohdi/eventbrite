module UberConcern
  def uber_estimate_cost
    url = "start_latitude=#{params['st_lat']}&start_longitude=#{params['st_lng']}"
    url += "&&end_latitude=#{@event.venue.latitude}&end_longitude=#{@event.venue.longitude}"
    RestClient.get("#{ENV['UBER_API_URL']}#{url}", Authorization: "Token #{ENV['UBER_API_TOKEN']}")
  end
end