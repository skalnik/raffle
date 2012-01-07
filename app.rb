require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
Sinatra::Application.environment = ENV['RACK_ENV'] || 'development'
Bundler.require(:default, Sinatra::Application.environment)


class RaffleApp < Sinatra::Base
  get '/' do
    "Success!"
  end
end
