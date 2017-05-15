require_relative '../views/customer_view.rb'
require_relative "../models/customer.rb"

class CustomersController
  def initialize(customer_repo)
    @customer_repo = customer_repo
    @customer_view = CustomerView.new
  end

  def list
    customers = @customer_repo.all
    @customer_view.display_customers(customers)
  end

  def add
    # ask user what name for new meal
    #  + the price
    name = @customer_view.ask_user_for("name")
    address = @customer_view.ask_user_for("address")
    customer = Customer.new(name: name, address: address)
    @customer_repo.add(customer)
  end
end
