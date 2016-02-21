class Banana

	def set_number=(my_number)
		@my_number = my_number
	end

	def get_number
		return @my_number
	end
end

my_banana=Banana.new
print "Give me a number: "
my_banana.set_number = gets.chomp.to_i

print "Do you like bananas? (Y/N)"
input = gets.chomp.downcase
if input == "y"
	print "Ba"
	print "na"*my_banana.get_number
	puts "."
else
	Puts "Well screw you, ya jerk."
end
