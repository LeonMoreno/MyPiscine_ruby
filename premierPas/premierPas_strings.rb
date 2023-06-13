# # Data Types

# user_name = "leo"
dia_hoy = "Jueves"
user_age = 42
pi = 3.141592

puts ("El nombre del protagonista es " + user_name)
puts ("la edad actual es " + user_age.to_s + " y hoy es " + dia_hoy.downcase)

# Strings metodos
# https://ruby-doc.org/3.2.2/String.html

puts user_name.upcase()
puts user_name.downcase()
puts user_name.capitalize()

s = "      \t Hola Mundo      \t\t\t\t"

puts s.strip() # Eliminar espacios inicio -- final

puts "Ruby me gusta mucho".length
puts "Ruby me gusta mucho".bytesize
puts 10.size #bytes en memoria de un int

puts "Ruby me gusta mucho".include? "men"
puts "Ruby me gusta mucho".include? "me"
puts dia_hoy[3]
puts dia_hoy[1,4].upcase # SubString substr
puts user_name.reverse

poema = "My honeydew has flown from my hand
And my honeydew has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."

puts poema.gsub!("honeydew", "ruby") # Global subtitucion

line = "Primera linea
segunda linea.
tercera LInea
cuarta Linea"


new_line = line.lines.reverse # lines: return array con cada linea

puts ("Primera Linea = " + new_line[0])

puts "\n---------\n"

jo = new_line.join # Cogio el array y lo convirtio en string

puts jo[0]

##INDEX
puts dia_hoy.index("e")

puts "Dia es: #{dia_hoy[3..-1]}"