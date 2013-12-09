require 'bundler'
require './lib/compliment' 
Bundler.require 

class App < Sinatra::Application 

	get '/compliment' do
		@compliment = Compliment.new
		erb :compliment
	end

end