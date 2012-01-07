require 'sinatra/base'

class RaffleApp < Sinatra::Base
  get '/' do
    "Success!"
  end
end
