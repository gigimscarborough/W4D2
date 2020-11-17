class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
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

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def add_employee(employee)
        @employees << employee

        employee.boss = self
    end


    def bonus(multiplier)
        total_employees = []
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total_employees << employee.employees
            else
                total_employees << employee
            end
        end
        employed = total_employees.flatten
        salaries = total_employees.map { |employee| employees.salary}.sum

        salaries * multiplier
    end
end