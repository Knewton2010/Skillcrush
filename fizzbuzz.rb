counter = 0
while (counter < 100)
	counter += 1
	if (counter % 3 == 0)
		if (counter % 5 == 0)
			puts "FizzBuzz"
		else 
			puts "Fizz"
		end
	elsif (counter % 5 == 0)
		puts "Buzz"
	else 
		puts "#{counter}"
	end
end
