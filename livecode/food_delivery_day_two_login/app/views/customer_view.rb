class CustomerView
  def display_customers(customers)
    puts "List of customers:"
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name}"
    end
  end

  def ask_user_for(item)
    puts "#{item.capitalize}?"
    print ">"
    answer = gets.chomp
  end
end
