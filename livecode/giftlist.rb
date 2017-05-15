require 'csv'

def display_menu
  puts ""
  puts "1 - Display giftlist"
  puts "2 - Add a gift"
  puts "3 - Remove a gift"
  puts "4 - Mark gift as bought"
  puts "5 - Exit the program"
  puts ""
end

def display_giftlist(giftlist)
  puts ""
  puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅"
  puts "🎅        My giftlist        🎅"
  puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅"
  giftlist.each_with_index do |gift, index|
    puts "#{index + 1} - #{gift[:name]} for #{gift[:receiver]}: #{gift[:price].round(2)}€"
  end
  puts ""
end

def save(giftlist)
  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath    = 'giftlist.csv'
  CSV.open(filepath, 'wb', csv_options) do |csv|
    csv << ['name', 'price', 'receiver']
    giftlist.each do |gift|
      csv << [gift[:name], gift[:price], gift[:receiver]]
    end
  end
end

def load_giftlist_from_csv
  giftlist = []
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
  filepath    = 'giftlist.csv'
  CSV.foreach(filepath, csv_options) do |row|
    giftlist << {name: row["name"], price: row["price"].to_f, receiver: row["receiver"]}
  end
  return giftlist
end

def create_gift
  puts ""
  puts "Enter info about gift:"
  name = ask_user_for("name")
  price = ask_user_for("price").to_f
  receiver = ask_user_for("receiver")
  return { name: name, price: price, receiver: receiver }
end

def ask_user_for(info)
  puts "#{info.capitalize}?"
  print ">"
  return gets.chomp
end
