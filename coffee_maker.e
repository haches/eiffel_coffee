note
	description: "Class {COFFEE_MAKER} provided features of a coffee machine."
	author: "hce"
	date: "2013.05.28"

class
	COFFEE_MAKER

create
	make


feature {NONE} -- Initialization

	make
			-- Creation routine for coffee maker
		do
			create inventory.make

		end


feature -- Basic operations

	calculate_price(product: STRING; size: STRING): DOUBLE
			-- Calculates and returns the price of a coffee.
			-- Takes into account the basic product-price and the size.	
		require
			not_void: product /= Void and size /= Void
		do
			if product.is_equal ("Coffee black") then
				if size.is_equal ("small") then
					Result := 2.30 * 1
				elseif size.is_equal ("medium") then
					Result := 2.30 * 2
				elseif size.is_equal ("tall") then
					Result := 2.30 * 3
				end
			elseif product.is_equal ("Coffee milk") then
				if size.is_equal ("small") then
					Result := 2.50 * 1
				elseif size.is_equal ("medium") then
					Result := 2.50 * 2
				elseif size.is_equal ("tall") then
					Result := 2.50 * 3
				end
			else
				Result := -1
			end
		end


	output_product (product_a: STRING; size_a: STRING; amount_money_a: DOUBLE): DOUBLE
			-- Given a product of a certain size and an amount of money, this function
			-- issues the dispense of the product and returns possible change.
			-- If the money is not enough the function returns the money without dispensing the product.
		require
			not_void: product_a /= Void and size_a /= Void
		do
			-- TODO
			-- if amounty_money_a is sufficient, then check if enough ingredients are in the inventory
			-- if yes, dispense the product (call dispense procedure) and return possible change (i.e. amount_money - product price)
			-- if amount_money is not sufficient, then return all money
			-- if not enough ingredients are available, return all money
		end


feature -- Access

	Size_small: STRING = "small"
			-- The size of a small coffee.

	Size_medium: STRING = "medium"
			-- The size of a medium coffee.

	Size_tall: STRING = "tall"
			-- The size of a tall coffee.


feature {NONE} -- Implementation

	inventory: INVENTORY
			-- The inventory of ingredients fo the machine

	Price_coffee_black: DOUBLE = 2.30
			-- Price of a coffee black.

	Price_coffee_milk: DOUBLE = 2.50
			-- Price of a coffee with milk.

	Price_factor_small: INTEGER = 1
			-- Price factor for a small coffee.

	Price_factor_medium: INTEGER = 2
			-- Price factor for a medium coffee.

	Price_factor_tall: INTEGER = 3
			-- Price factor for a tall coffee.

end
