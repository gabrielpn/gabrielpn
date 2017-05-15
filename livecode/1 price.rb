price = rand(1..100)

guess = nil

until guess == price
  puts "Please, guess a number"
  guess = gets.chomp.to_i

  diff = guess - price

  if diff < 0
    puts "more"
  elsif diff > 0
    puts "less"
  end
end
  puts "You are the best !"

