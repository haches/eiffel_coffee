note
	description: "Root class of our simple coffee maker. ASWEC'13 demo."
	author: "hce"
	date: "2013.05.28"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make


feature {NONE} -- Initialization

	make
			-- Root creation procedure.
		local
			l_coffee_maker: COFFEE_MAKER
			l_change: DOUBLE
		do
			create l_coffee_maker.make
			print ("Price for: Coffee milk, medium = " + l_coffee_maker.calculate_price ("Coffee milk", l_coffee_maker.size_medium).out + "%N")
			l_change := l_coffee_maker.output_product ("Coffee milk", l_coffee_maker.size_medium, 6.0)
			print ("Returning change: " + l_change.out)
		end

end
