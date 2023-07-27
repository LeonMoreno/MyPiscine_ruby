def comparar(condicion)
    if condicion
        :true_stuff # Implicit return  -- ultima instruccion?
    else
        :false_stuff
    end
end

puts comparar(2)


puts "------------"

s = "He said, \"Don't\""
b = 'He said,  "Don\'t" \n hola'
b = "He said,   \n hola"
c = %[flexible quotes can handle both ' and " characters]
d = %(flexible quotes can handle both ' and " characters)
puts s == b
puts c == d


=begin
Este eje lo dejo tal cual
cuando utilizo << en vez de += para construir un string
me cambia la string original.
=end

original_string = "Hello, "
hi = original_string
there = "World"
hi << there

puts original_string

puts "--------"

a = "a string"
b = "a string"

print "string: a == b: "
puts a == b

print "a.object_id == b.object_id: "

puts a.object_id == b.object_id

puts "--------"

sym1 = :a_sym
sym2 = :a_sym

print "symsbol: a == b: "
puts sym1 == sym2

print "symsbol: a.obj_id == b.odj_id: "
puts sym1.object_id == sym2.object_id