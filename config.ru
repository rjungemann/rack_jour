require 'sinatra/base'
require "#{File.dirname(__FILE__)}/rack_jour"

class App < Sinatra::Base
  use Rack::Jour, "nifty-server", 4567
end

run App.new