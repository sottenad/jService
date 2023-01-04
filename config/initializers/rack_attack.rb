Rack::Attack.throttle("requests by ip", limit: 30, period: 60) do |request|
    request.ip
  end
  
