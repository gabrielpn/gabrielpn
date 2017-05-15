require_relative "../models/employee"
class EmployeeRepository
  attr_reader :employees
  def initialize(csv_path)
    @csv_path = csv_path
    @employees = []
    @next_id = 1
    load_csv
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @employees << Employee.new(row)
    end
    @next_id = @employees.empty? ? 1 : @employees.last.id + 1
  end
end
