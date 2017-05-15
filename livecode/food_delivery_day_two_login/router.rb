class Router
  def initialize(sessions_controller, meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
  end

  def run
    puts "**** Welcome ****"
    @employee = @sessions_controller.login
    while @employee
      if @employee.role == "manager"
        display_menu_for_manager
      else
        display_menu_for_delivery_guy
      end
    end
  end

  def display_menu_for_manager
    puts ""
    puts "What do you want to do?"
    puts "1- List meals"
    puts "2- Add meal"
    puts "3- List customers"
    puts "4- Add customer"
    puts "5- Sign out"
    puts ""
    print ">"
    action = gets.chomp.to_i
    case action
    when 1
      @meals_controller.list
    when 2
      @meals_controller.add
    when 3
      @customers_controller.list
    when 4
      @customers_controller.add
    when 5
      puts "Goodbye, have a nice night!"
      @employee = nil
    end
  end

  def display_menu_for_delivery_guy
    # TODO list actions for delivery guy
    puts "menu for delivery guy"
    puts "5- Sign out"
    puts ""
    print ">"
    action = gets.chomp.to_i
    case action
    when 5
      puts "Goodbye, have a nice night!"
      @employee = nil
    end
  end
end
