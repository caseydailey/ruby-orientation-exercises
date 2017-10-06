


class Company

    attr_reader :company_name, :employees

    def initialize(company_name, employees = [])
        @company_name = company_name
        @employees = employees
    end

    def add_employee(employee)
        @employees.push(employee)
    end

    def to_s
        puts "We are #{@company_name}."
        puts "These are our employees: "
        employees.each { |employee| puts employee.employee_name }
    end

end


# Create a class that contains information about employees of a company 
# and define methods to get/set employee name, job title, and start date.


class Employee

    attr_accessor :title 
    attr_reader :employee_name, :start_date

    def initialize(employee_name, title, start_date)
        @employee_name = employee_name
        @title = title
        @name = start_date
    end

end


# Create a company 
nss = Company.new("Nashville Software School")

# and three employees
casey = Employee.new("Casey Dailey", "TA", "7/1/2017")
jisie = Employee.new("Jisie David", "Lead Instructor", "7/1/2017")
hanna = Employee.new("Hannah Hall", "Junior Instructor", "1/1/2017")

# and then assign the employees to the company
new_hires = [casey, jisie, hanna]
new_hires.each {|hire| nss.add_employee(hire)}

puts nss


