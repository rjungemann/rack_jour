require 'sinatra/base'
require "#{File.dirname(__FILE__)}/rack_jour"

class App < Sinatra::Base
  configure do |app|
    app.use Rack::Jour, "nifty-server", app.port
  end
end

run App.new