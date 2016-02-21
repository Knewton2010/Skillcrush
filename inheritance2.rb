class Fruit

	@@total_fruits = 0

	attr_accessor :name

	def initialize
		@@total_fruits += 1
	end

	def self.current_count
		if @@total_fruits == 1
			puts "There is 1 fruit."
		else
			puts "There are currently #{@@total_fruits} fruits."
		end
	end

end

class Bunch_fruit < Fruit

	attr_accessor :bunch_size

end

class Bananas < Bunch_fruit

	def speak
		puts "I am full of potassium."
	end

end

class Grapes < Bunch_fruit

	attr_accessor :color

	def speak
		puts "I can make wine."
	end

end

my_bananas = Bananas.new
my_bananas.name = "Stevie"
my_bananas.bunch_size = 6
my_bananas.speak
puts my_bananas.bunch_size
puts my_bananas.name
my_grapes = Grapes.new

Fruit.current_count