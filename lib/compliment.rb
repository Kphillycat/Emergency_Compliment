class Compliment
	def initialize
		@message
		@image = grab_random_image
	end

	def grab_random_image
        images = Dir.entries("./public/images").select {|f| !File.directory? f}
        images[rand(images.length)]
	end
end
