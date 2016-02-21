class Fruit

	@@total_fruits = 0

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

	def set_name(fruit_name)
		@name = fruit_name
	end

	def get_name
		return @name
	end
end

class Bunch_fruit < Fruit

	def set_bunch_size(bunch_size)
		@size = bunch_size
	end

	def get_bunch_size
		return @size
	end
end

class Bananas < Bunch_fruit

	def speak
		puts "I am full of potassium."
	end

end

class Grapes < Bunch_fruit

	def set_color(grapes_color)
		@color = grapes_color
	end

	def get_color
		return @color
	end

	def speak
		puts "I can make wine."
	end

end

my_bananas = Bananas.new
my_bananas.set_name("Stevie")
my_bananas.set_bunch_size(6)
my_bananas.speak
puts my_bananas.get_bunch_size
puts my_bananas.get_name
my_grapes = Grapes.new

Fruit.current_count