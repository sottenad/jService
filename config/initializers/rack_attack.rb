Rack::Attack.throttle("requests by ip", limit: 60, period: 60) do |request|
    request.ip
  end
  


# bad_ips = ['34.70.41.112', '23.159.16.216'] # Pulled from a external API on app boot.
# # Block these IPs
# Rack::Attack.blocklist "block known bad IP address" do |req|
#   bad_ips.include?(req.ip)
# end
