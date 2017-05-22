require 'twitter'

$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'mz6kS2H4GMXmpM7VWm5vsL0bm'
  config.consumer_secret = 'iCSujlYbaJz2wpvXYAEEytZWyb19CBjoywfuRCvSz7CP53Y3rp'
  config.access_token = '15649642-RpETPTSdugiKLd93JhY9Ql5lxBVGpVXQQefLSNV1Q'
  config.access_token_secret = 'AH7NOAN8ezvNCB5A9cv5WXuJm9DLydOmzgqFDgpQSiqLg'
end

# $twitter = Twitter::REST::Client.new do |config|
#   config.consumer_key = ENV['CONSUMER_KEY']
#   config.consumer_secret = ENV['CONSUMER_SECRET']
#   config.access_token = ENV['YOUR_ACCESS_TOKEN']
#   config.access_token_secret = ENV['YOUR_ACCESS_SECRET']
# end