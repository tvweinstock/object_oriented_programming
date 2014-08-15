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
				move_forward
			end
		end

			def move_forward
				case@direction
				when 'W'
					@x -= 1
				end
			end

				def turn_right
					@direction = case @direction
					when 'N'
						'E'
					when 'E'
						'S'
					when 'S'
						'W'
					when 'W'
						'N'
					end
				end
	end
end

rover1 = Rover.new(1,2,'N')
rover1.move(1,4,'N')



