class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
      if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
          raise ArgumentError.new("Raises an ArgumentError")
      end
      if !ALLOWED_OPERATIONS.include?(operation)
          raise UnsupportedOperation.new("Raises an UnsupportedOperation")
      end
    case operation
    when "+"
      res = first_operand + second_operand
      return "#{first_operand} + #{second_operand} = #{res}"
    when "*"
      res = first_operand * second_operand
      return "#{first_operand} * #{second_operand} = #{res}"
    when "/"
      if second_operand == 0
          begin
              raise ZeroDivisionError.new("Division by zero is not allowed.")
            rescue => e
              return e.message
          end
      end
      res = first_operand / second_operand
      return "#{first_operand} / #{second_operand} = #{res}"
    else
      puts "Error ELSE"
    end
  end
end
  
puts SimpleCalculator.calculate(15, 3, "-")