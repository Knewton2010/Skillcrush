def first_script (my_number)
	my_number = ((my_number + 5) *2 - 4) / 2 - my_number
	puts my_number
end

puts "Give me a number: "
first_script (gets.to_i)
