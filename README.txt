rack_jour
	by Roger Jungemann (MIT License)
	http://github.com/thefifthcircuit/rack_jour
	
It exposes your rack app over Bonjour.

Usage:

	require 'sinatra/base'
	require 'rack_jour'
	
	class App < Sinatra::Base
	  use Rack::Jour, "name", 4567
	end
	
	run App.new
	
Requires the dnssd gem.