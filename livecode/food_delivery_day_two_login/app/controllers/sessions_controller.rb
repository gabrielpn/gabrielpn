require_relative "../views/session_view"
class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @session_view = SessionView.new
  end

  def login
    username = @session_view.ask_user_for('Username')
    password = @session_view.ask_user_for('Password')
    employees = @employee_repository.employees
    employees.each do |employee|
      if employee.username == username && employee.password == password
        return employee
      end
    end
    puts "Wrong credentials, try again..."
    login
  end
end
