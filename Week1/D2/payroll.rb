

class Employee
	attr_reader :name, :email
	def initialize (name, email)
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
	def initialize (name, email, hourlyPay, hoursWeek)
		@name = name
		@email = email
		@hourlyPay = hourlyPay
		@hoursWeek = hoursWeek
	end
	def salary
		return	(@hourlyPay*@hoursWeek)*52
	end
end

class SalariedEmployee < Employee
	def initialize (name, email, totalPay)
		@name = name
		@email = email
		@totalPay = totalPay
	end
	def salary
		return @totalPay
	end
end

class MultiPaymentEmployee < Employee
	def initialize (name, email, totalPay, hourlyPay, hoursWeek)
		@name = name
		@email = email
		@totalPay = totalPay
		@hourlyPay = hourlyPay
		@hoursWeek = hoursWeek
	end
	def salary
		return ((@hourlyPay*@hoursWeek)*52) + @totalPay
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

	def pay_employees
		sum = 0
    	@employees.each do |em|
	    	sum += em.salary
		end	
		tax = 0.18
		totalWeeklySum = (sum/52) * (1-tax)
		puts "Weekly salaries are: #{totalWeeklySum}" 	
	end
end

employees = [

		josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50),
		nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000),
		ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55),
		boris = HourlyEmployee.new('Boris', 'nacemail@example.com', 15, 50),
		anna = HourlyEmployee.new('Anna', 'hemail@example.com', 15, 50)
	]

finalPayroll = Payroll.new(employees)
finalPayroll.pay_employees

