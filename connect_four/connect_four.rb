Shoes.app :width => 900, :height => 625 do
	white = "#FFFFFF"
	black = "#000000"
	red = "#FF0000"

	@turn = 0
	@board = []
	@picked = []

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

		if button == 1
			if !@picked.include?(7 * row + column)
				@turn += 1

				if @turn % 2 == 1
					color = red
				else
					color = black
				end

				@board[(7 * row) + column].style(:fill => color)
				@picked << (7 * row + column)
			end
		end
	end

end
