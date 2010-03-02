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
    
    def call env
      status, headers, body = @app.call env
      
      [status, headers, body]
    end
  end
end

# # usage:
# 
# require 'sinatra/base'
# 
# class App < Sinatra::Base
#   use Rack::Jour, "nifty-server", 4567
# end
# 
# run App.new