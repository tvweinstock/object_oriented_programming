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

		move_array = moves.split(",")
		move_array.each do |move|

			case move
			when 'R'
				turn_right
			when 'L'
				turn_left
			when 'M'
				move_position
			end
		end
	end	

	def move_position
		puts "hey there"
		case @direction
		when 'W'
			@x -= 1
		when 'S'
			@y -= 1
		when 'N'
			@y += 1
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

rover1 = Rover.new(1,2,'N')
rover1.move("R")
puts rover1.current_position



