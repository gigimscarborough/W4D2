require "byebug"
class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        boss.add_employee(self) if !boss.nil? 
    end

    def boss=(new_boss)
        @boss = new_boss
    end


    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss=nil)
        super(name, title, salary, boss)
        @employees = []
    end

    def add_employee(employee)
        @employees << employee

        employee.boss = self
    end


    def bonus(multiplier)
        total_employees = []
        # debugger
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                # debugger
                total_employees << employee
                total_employees << employee.employees
            else
                # debugger
                total_employees << employee
            end
        end
        # debugger
        employed = total_employees.flatten
        # debugger
        # employed.each do |employee|
        #     p employee.name
        #  end 
        # debugger
        salaries = employed.map { |employee| employee.salary }.sum

        salaries * multiplier
    end
end


ned = Manager.new("Ned","Founder",1000000)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren) 
p ned.bonus(5)