puts "Give me a color: "
fav_color = gets.chomp

case fav_color
when 'red'
  puts "Red like fire!"
when 'orange'
  puts "Orange like, well... an orange."
when 'yellow'
  puts "Yellow daffodils are so pretty in the spring!"
when 'green'
  puts "Have you been to the Emerald City in Oz?"
when 'blue'
  puts "Blue like the sky!"
when 'purple'
  puts "Damn straight son."
else
  puts "Hmm, well I don't know what that color is!"
end


puts "Hows the weather? (sun, rain, thunder) "
weather = gets.chomp

case weather
when 'sun'
	puts "Dress as normal."
when 'rain'
	puts "I recommend a coat and an umbrella."
when 'thunder'
	puts "Coat, umbrella...and maybe some earmuffs?"
end
