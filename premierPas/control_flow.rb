
# if elsif -- NORMAL // Bueno casi. xD
# nada de { } y acaba con end

if 4 < 9
    puts "Verdadero"
else
    puts "Falso"
end

puts " \n ------------------- \n"

num1 = 42
num2 = 3

if num1 < num2
    puts "num1 menor"
elsif num1 > num2
    puts "nu1 may"
else
    puts "Iguales"
end

puts " \n ------------------- \n"


=begin
    unless: Para evaluar condicion falsa se cumple hago
    este es un comentario de varias
    Lineas
=end

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end