module Andrew
  class Manager < Employee
    attr_reader :employees

    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    def send_report
      puts "Sending email..."
      # use email sending library...
      puts "Email sent!"
    end

    def give_all_raises(employees)
      employees.each {|employee| employee.give_annual_raise}
    end

    def fire_all_employess
      employees.each {|employee| employee.active = false}
    end
  end
end