# frozen_string_literal: true

class Factorial
  def factorial_of(num)
    factor = 1
    i = 1
    puts "ID del obj: #{self.object_id} -- num = #{num}"
    while i <= num
      factor = i * factor
      i += 1
    end
    log_factorial(factor)
    factor
  end

  def log_factorial(factor)
    puts "se hizo log de #{factor}"
  end
end

# fac = Factorial.new
# puts fac.factorial_of(10)
