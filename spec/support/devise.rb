require 'devise'

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controllers
  config.include Devise::TestHelpers, :type => :requests

end
