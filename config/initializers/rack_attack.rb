Rack::Attack.throttle("requests by ip", limit: 10, period: 60) do |request|
    request.ip
  end
  
# Block requests from 1.2.3.4
Rack::Attack.blacklist('block 34.70.41.112') do |req|
  # Requests are blocked if the return value is truthy
  '34.70.41.112' == req.ip
end