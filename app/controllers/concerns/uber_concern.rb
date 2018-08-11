module UberConcern
  def uber_estimate_cost(st_lat, st_lng)
    url = "start_latitude=#{st_lat}&start_longitude=#{st_lng}"
    url += "&&end_latitude=#{@event.venue.latitude}&end_longitude=#{@event.venue.longitude}"
    RestClient.get("#{ENV['UBER_API_URL']}#{url}", Authorization: "Token #{ENV['UBER_API_TOKEN']}")
  end
end