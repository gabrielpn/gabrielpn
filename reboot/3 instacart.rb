puts "Welcome to the Store"


store = [
  { name: "shoes", price: 80 },
  { name: "cap", price: 15 },
  { name: "t-shirt", price: 25 },
  { name: "socks", price: 10 },
  { name: "jeans", price: 110 },
  { name: "pull", price: 75 }
]

store.each_with_index do |product, index|
  puts "#{index + 1} - #{product[:name]} #{product[:price]}€"
end

cart = []
answer = "yes"

until answer == "no"
  puts "What do you want ?"
  index = gets.chomp.to_i - 1

  product_name = store[index][:name]
  cart << product_name

  puts "continue shopping ? yes/no"
  answer = gets.chomp
end

puts "Cart content"
bill = 0
cart.each do |item_name|
  item = store.find { |product| item_name == product[:name] }
  item_price = item[:price]
  puts "#{item[:name]}: #{item_price}€"
  bill += item_price
end

puts "Total price: #{bill}€"

