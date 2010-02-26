# exposes your rack app over Bonjour.

require 'dnssd'

module Rack
  class Jour
    def initialize app, name, port
      @app, @name, @port = app, name, port
      
      @service ||= DNSSD.register(@name, "_http._tcp", nil, @port) do
        puts "Registered over Bonjour."
      end
    end
  end
end

# # usage:
# 
# require 'sinatra/base'
# 
# class App < Sinatra::Base
#   use Rack::Jour, "name", 4567
# end
# 
# run App.new