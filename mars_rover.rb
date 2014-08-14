class Rover
	attr_accessor :x, :y, :direction
	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction

		def current_position
			"#{x}, #{y}, #{direction}"
		end
			
		def turn #to change direction depending use if statement
			if direction = north
		end
		
		def move #to moved position + and -
		end

		def controller #to take in coordinates from NASA 		

		end
		
	end

end

rover1 = Rover.new(1,2,'N')


