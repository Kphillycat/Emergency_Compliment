class Compliment
  attr_reader :message, :image
	def initialize
		@message = compliment_generator
		@image = grab_random_image
	end

	def grab_random_image
        images = Dir.entries("./public/images").select {|f| !File.directory? f}
	end

  def compliment_generator
    compliments = Array.new
      File.open("./compliments.txt") do |file|
          file.each_line do |line|
            matches = line.match(/(\d*.\s)(.*)/)
            compliments << matches[2]
          end
      end
    compliments
  end
end
