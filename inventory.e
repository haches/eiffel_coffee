note
	description: "Class {INVENTORY} represents the inventory of a coffee machine."
	author: "hce"
	date: "2013.05.28"

class
	INVENTORY

create
	make


feature {NONE} -- Initialization

	make
			-- Creation routine for the inventory.
		do
			coffee_units := 15;
			milk_units := 15;
		end


feature -- Basic operations

	set_coffee_units(a_coffee: INTEGER)
			-- Sets the amount of coffee units available in the inventory.
		require
			valid_coffee_arg: a_coffee >= 0 and a_coffee <= 15
		do
			coffee_units := a_coffee
		ensure
			coffee_set: coffee_units = a_coffee
		end

	set_milk_units(a_milk: INTEGER)
			-- Sets the amount of milk units available in the inventory.
		require
			valid_milk_arg: a_milk >= 0 and a_milk <= 15
		do
			milk_units := a_milk
		ensure
			milk_set: milk_units = a_milk
		end


feature -- Access

	coffee_units: INTEGER
			-- The amount of coffee units in the inventory.

	milk_units: INTEGER
			-- The amount of milk units in the inventory.


invariant
	valid_amount_of_coffee: coffee_units >= 0 and coffee_units <= 15
	valid_amount_of_milk: milk_units >= 0 and milk_units <= 15
end
