Shoes.app :width => 900, :height => 625 do
	blue = "#0000FF"
	@board = []

	# Build the grid
	6.times do |row|
		7.times do |column|
			r = rect 100 * column + 5,
				100 * row + 5, 100, :fill => blue
			@board << r
		end
	end

end
