print "Cual es tu nombre? "
first_name = gets.chomp
first_name.capitalize!
print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!
print "Whatcity do you born? "
city = gets.chomp
city.capitalize!
print "What's ir your state? "
state = gets.chomp
state.upcase!

puts "Tu nombre completo es #{first_name} #{last_name} y vienes de #{city} #{state}"