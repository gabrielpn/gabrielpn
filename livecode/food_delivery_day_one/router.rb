class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    action = 0
    puts "**** Welcome ****"
    until action == 5
      puts ""
      puts "What do you want to do?"
      puts "1- List meals"
      puts "2- Add meal"
      puts "3- List customers"
      puts "4- Add customer"
      puts "5- Quit program"
      puts ""
      print ">"
      action = gets.chomp.to_i

      case action
      when 1
        @meals_controller.list
      when 5
        puts "Goodbye, have a nice night!"
      when 2
        @meals_controller.add
      when 3
        @customers_controller.list
      when 4
        @customers_controller.add
      end
    end
  end
end
