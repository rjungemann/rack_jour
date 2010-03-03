rack_jour
	by Roger Jungemann (MIT License)
	http://github.com/thefifthcircuit/rack_jour
	
It exposes your rack app over Bonjour.

Usage:

	require 'sinatra/base'
	require 'rack_jour'
	
	class App < Sinatra::Base
	  use Rack::Jour, "nifty-server", 4567
	end
	
	run App.new

You can use it like this with Sinatra so you don't have to know the port.

  require 'sinatra/base'
  require "rack_jour"
  
  class App < Sinatra::Base
    configure do |app|
      app.use Rack::Jour, "nifty-server", app.port
    end
  end
  
  run App.new
	
Requires the dnssd gem.

To search for these Bonjour-exposed servers easily, you can use appjour.

To install:

  sudo gem install lachie-appjour --source=http://gems.github.com
  
To use:

  appjour
  #=> Searching for servers (3 seconds)
  #=> Found web app called 'nifty-server'

  appjour nifty-server