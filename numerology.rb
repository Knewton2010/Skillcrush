def get_birthday
	puts "Give me your birthday (MM/DD/YYYY)"
	birthday = gets.chomp
	calc (birthday)
end


#eliminates all non-numerical values before calculating
#and makes sure that the proper amount of numbers were added
def calc(birthday)
	birthday = birthday.gsub(/[^0-9]/, "")
	if birthday.length != 8
		puts "Invalid entry, too long or short"
	end

#Performs calculations while birthday is longer than one
#digit, splitting each character into an array and then
#adding them together.
	while birthday.length > 1
		sum = 0
		birthday.split("").each do |i|
			sum += i.to_i
		end
		birthday = sum.to_s
	end
	final (birthday)
end

#Once the final value is obtained, outputs corresponding result
def final (birthday)
	case birthday
	when '1'
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when '2'
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when '3'
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when '4'
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when '5'
		puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when '6'
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when '7'
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when '8'
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when '9'
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

get_birthday