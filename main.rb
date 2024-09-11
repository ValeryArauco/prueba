require_relative 'lib/calculator'

puts 'Calculadora Simple'
calculator = Calculator.new
result = calculator.add(5, 3)
puts "5 + 3 = #{result}"

result = calculator.factorial(5)
puts "Factorial de 5 es #{result}"

result = calculator.fibonacci(7)
puts "El séptimo número de Fibonacci es #{result}"
