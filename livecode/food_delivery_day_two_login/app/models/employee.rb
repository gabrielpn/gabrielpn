class Employee
  attr_accessor :id
  attr_reader :username, :password, :role
  def initialize(attributes = {})
    @username = attributes[:username]
    @password = attributes[:password]
    @role = attributes[:role]
    @id = attributes[:id]
  end
end
