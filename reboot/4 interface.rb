require_relative 'giftlist.rb'
require_relative 'etsy_scraper.rb'
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
    answer = ask_user_for('Need ideas')
    if answer == "yes"
      search = ask_user_for("Search")
      ideas = search_from_etsy(search)
      ideas[0..3].each_with_index do |idea, index|
        puts "#{index + 1} - #{idea[:title]}: #{idea[:price]}€"
      end
      index = ask_user_for("Which one").to_i - 1
      receiver = ask_user_for("receiver")
      gift = {name: ideas[index][:title], price: ideas[index][:price], receiver: receiver, bought: false}
    else
      gift = create_gift
    end
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
    giftlist[index][:bought] = !giftlist[index][:bought]
    save(giftlist)
    puts ""
    puts "#{giftlist[index][:name]} bought!"
  end
end
