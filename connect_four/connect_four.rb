Shoes.app :width => 900, :height => 625 do
	white = "#FFFFFF"
	black = "#000000"
	red = "#FF0000"
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

		if button == 1
			alert("Mouse is clicked at #{x}, #{y}.")
		end
	end

end
