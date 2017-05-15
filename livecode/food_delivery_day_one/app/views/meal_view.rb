class MealView
  def display_meals(meals)
    puts "List of meals:"
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name}"
    end
  end

  def ask_user_for(item)
    puts "#{item.capitalize}?"
    print ">"
    answer = gets.chomp
  end
end
