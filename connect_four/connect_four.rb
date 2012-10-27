Shoes.app :width => 900, :height => 625 do
	white = "#FFFFFF"
	black = "#000000"
	red = "#FF0000"

	@turn = 0
	@board = []

	# Build the grid
	6.times do |row|
		7.times do |column|
			r = rect 100 * column + 5,
				100 * row + 5, 100, 100, :fill => white
			@board << r
		end
	end

	animate do
		button, x, y = self.mouse

		column = x / 100
		row = y / 100
		over_x = x % 100
		over_y = y % 100

		if button == 1
			if (5..105).include?(over_x)
				if (5..105).include?(over_y)
					@turn += 1

					if @turn % 2 == 1
						color = red
					else
						color = black
					end

					@board[(7 * row) + column].style(:fill => color)
				end
			end
		end
	end

end