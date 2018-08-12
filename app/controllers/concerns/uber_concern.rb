module UberConcern
  def uber_estimate_cost(st_lat, st_lng, end_lat, end_lng)
    url = "start_latitude=#{st_lat}&start_longitude=#{st_lng}"
    url += "&&end_latitude=#{end_lat}&end_longitude=#{end_lng}"
    RestClient.get("#{ENV['UBER_API_URL']}#{url}", Authorization: "Token #{ENV['UBER_API_TOKEN']}")
  end
end