require 'rubygems'
require 'bundler/setup'
require 'sinatra'
Sinatra::Application.environment = :test
Bundler.require(:default, Sinatra::Application.environment)
require 'capybara/rspec'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

Capybara.app = RaffleApp
