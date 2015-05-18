ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "coveralls"
Coveralls.wear!('rails')

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers
end
