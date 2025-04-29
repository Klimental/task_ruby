# Основні функції операцій
def sum(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mult(a, b)
  a * b
end

def divide(a, b)
  if b != 0
    a.to_f / b
  else
    "Error: zero"
  end
end

# Базовий калькулятор
puts "First Number:"
num1 = gets.chomp.to_f

puts "Second number:"
num2 = gets.chomp.to_f

puts "Choose (+, -, *, /):"
operation = gets.chomp

result = case operation
when "+"
  sum(num1, num2)
when "-"
  sub(num1, num2)
when "*"
  mult(num1, num2)
when "/"
  divide(num1, num2)
else
  "Operation not finded"
end

puts "Result: #{result}"
