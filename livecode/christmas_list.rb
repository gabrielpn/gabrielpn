require_relative 'giftlist.rb'
# Giftlist
puts "❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️"
puts "❄️           Giftlist          ❄️"
puts "❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️ ❄️"

giftlist = load_giftlist_from_csv
action = 0
until action == 5
  display_menu
  puts "What do you want to do?"
  print ">"
  action = gets.chomp.to_i

  case action
  when 1
    display_giftlist(giftlist)
  when 2
    gift = create_gift
    giftlist << gift
    save(giftlist)
    puts ""
    puts "#{gift[:name]} has been added to your giftlist!"
  when 3
    display_giftlist(giftlist)
    index = ask_user_for("Which one").to_i - 1
    gift = giftlist[index]
    giftlist.delete(gift)
    save(giftlist)
    puts ""
    puts "#{gift[:name]} has been removed from your giftlist!"
  when 4
    display_giftlist(giftlist)
    index = ask_user_for("Which one").to_i - 1
    giftlist[index][:bought] = true
    save(giftlist)
    puts ""
    puts "#{gift[name:]} bought!"
  end
end
