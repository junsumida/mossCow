require 'rspec'
require 'rack/test'
require 'coveralls'

require File.join(File.dirname(__FILE__), '..', 'app', 'app.rb')

Coveralls.wear!

RSpec.configure do |config|
  ENV['RACK_ENV'] ||= 'test'
end
