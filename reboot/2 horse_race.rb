def display_horses(array)
  array.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
end

puts "Welcome"
horses = ["Blue Jay", "Grosse Brêle", "Jean-Claude", "Poutou", "Black Angel"]

puts "Horses on start line :"
display_horses(horses)

puts "What is your bet ?"
index = gets.chomp.to_i - 1
bet = horses[index]
puts "Your bet: #{bet}"

new_horses = []
4.times do |lap|
  puts "Lap #{lap +1}"
  new_horses = horses.shuffle
  display_horses(new_horses)
end

winner = new_horses[0]
puts "The winner is #{winner}"
if bet == winner
  puts "You win"
else
  puts "You lose"
end
