require_relative "app/controllers/meals_controller.rb"
require_relative "app/repositories/meal_repository.rb"
meal_repository = MealRepository.new("data/meals.csv")
meals_controller = MealsController.new(meal_repository)



require_relative "app/controllers/customers_controller.rb"
require_relative "app/repositories/customer_repository.rb"
customer_repository = CustomerRepository.new("data/customers.csv")
customers_controller = CustomersController.new(customer_repository)

require_relative 'router'
router = Router.new(meals_controller, customers_controller) #, session_controller, orders_controller)
router.run

# require_relative "app/controllers/session_controller"
# require_relative "app/repositories/employee_repository"
# employee_repository = EmployeeRepository.new('data/employees.csv')
# session_controller = SessionController.new(employee_repository)

# require_relative 'app/controllers/orders_controller'
# require_relative 'app/repositories/order_repository'
# order_repository = OrderRepository.new('data/orders.csv',meals_repository, employees_repository, customers_repository)
# orders_controller = OrdersController.new(meal_repository, customer_repository, employee_repository, orders_repository)

