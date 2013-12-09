require 'bundler' #gem install bundler
Bundler.require #Will take everything in our GEMFILE and require it here

class TestApp < Sinatra::Application #needed for a config.ru file, a rake up file
	
	get '/hi' do #block
		@breaker = ["Ashley","Blake"].sample #create instance variable to put in route
	  erb :index #name of view in view folder
	end #Will only return the last expression



	#Now we have two routes
end