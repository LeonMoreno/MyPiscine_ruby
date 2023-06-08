puts "---- The 'While' Loop --- \n"
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

puts "---- The 'Until' Loop --- \n"

counter = 1
until counter > 10
  puts counter
  counter += 1
  
end

puts "---- The 'For' Loop --- \n"

# 1...10 -- no incluye 10 // 1..10 -- Incluye 10
for num in 1...10
    puts num
  end

puts "---- The 'For' Loop Indice_Array --- \n"

my_array = []

for i in 0...5
    my_array[i] = i + 1
end
  
puts my_array


puts "---- The 'Loop' method --- \n"

# break / Rompe el ciclo
# next -- can be used to skip over certain steps in the loop.
i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print ("#{i}")
  break if i <= 0
end

puts "---- The '.each' Iterator --- \n"

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

puts "---- The '.each' Iterator --- \n"
odds = [1,3,5,7,9]

odds.each { |num|
  num *= 2
  print ("#{num}")
}

puts "---- The '.times' Iterator --- \n"
10.times {puts "Hola Leo"}