class SessionView
  def ask_user_for(item)
    puts "#{item.capitalize}?"
    print ">"
    gets.chomp
  end
end
