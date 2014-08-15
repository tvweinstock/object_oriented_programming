class Rover
	attr_accessor :x, :y, :direction
	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def current_position
		"#{x}, #{y}, #{direction}"
	end

	def move(moves)
		moves.each do|move|
			case move
			when 'R'
				@direction = 'R'
			when 'L'
				@direction = 'L'
			when 'M'
				move_position
			end
		end

		def move_position
			case@direction
			when 'W'
				@x -= 1
			when 'S'
				@x -= 1
			when 'N'
				@x += 1
			when 'E'
				@x += 1
			end
		end

		def turn_right
			case @direction
			when 'N'
				then @direction = 'E'
			when 'E'
				then @direction = 'S'
			when 'S'
				then @direction = 'W'
			when 'W'
				then @direction = 'N'
			end
		end

		def turn_left
			case @direction
			when 'N'
				then @direction = 'W'
			when 'W'
				then @direction = 'S'
			when 'S'
				then @direction = 'E'
			when 'E'
				then @direction = 'N'
			end
		end
	end
end

rover1 = Rover.new(1,2,'N')
rover1.move("LMLMLMLMLMLM")
puts rover1.current_position



