# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def make_address(street, city, state, zip)

	address_street = street.to_s
	address_city = city
	address_state = state
	adress_zip = zip.to_s

	p 'You live at ' + address_street + ', in the beautiful city of ' + address_city + ', ' + address_state + '. Your zip is ' + adress_zip + '.'

end