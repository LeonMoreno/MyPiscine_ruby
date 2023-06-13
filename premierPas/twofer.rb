=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.
=end

module Ensayo
    def jump
        puts "Aqui voy"
    end
end
  
class MyClass
    include Ensayo
end

obj = MyClass.new
obj.jump