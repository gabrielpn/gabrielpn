# calculator
# ask for a number x2
# store numbers into variables
# add the 2 numbers
# display the result

# puts "Hello"
# puts ""

# puts "Choose a number"
# num1 = gets.chomp.to_f

# puts "Choose another number"
# num2 = gets.chomp.to_f


# # result = num1 + num2
# # puts "The result is #{result}"

# def calculator(x, y)
#   return x + y
# end

# result = calculator(num1, num2)
# puts "The result is #{result} !"


# ____

def calculator(x, y, z)
  case z
  when "add"
    return x + y
  when "substract"
    return x - y
  when "multiply"
    return x * y
  when "divide"
    return x / y
  else
    return "The operator is not valid"
  end
end

puts "Hello"
puts ""

answer = "yes"
until "answer" == "no"
  puts "Choose a number"
  num1 = gets.chomp.to_f
  puts "What do you want to do between : add, substract, multiply, divide"
  op = gets.chomp
  puts "Choose another number"
  num2 = gets.chomp.to_f
  puts ""
  puts "Compute again ? yes/no"
  answer = gets.chomp

# result = num1 + num2
# puts "The result is #{result}"

result = calculator(num1, num2, op)
puts "The result is #{result} !"


