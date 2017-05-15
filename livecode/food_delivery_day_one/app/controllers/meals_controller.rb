require_relative '../views/meal_view.rb'
require_relative "../models/meal.rb"

class MealsController
  def initialize(meal_repo)
    @meal_repo = meal_repo
    @meal_view = MealView.new
  end

  def list
    meals = @meal_repo.all
    @meal_view.display_meals(meals)
  end

  def add
    # ask user what name for new meal
    #  + the price
    name = @meal_view.ask_user_for("name")
    price = @meal_view.ask_user_for("price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repo.add(meal)
  end
end
