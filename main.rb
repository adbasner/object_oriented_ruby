require './employee'
require './manager'

employee1 = Andrew::Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Andrew::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Andrew::Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
p "Before Raise"
p employee1.salary
p employee2.salary
p "After Raise"
manager.give_all_raises(manager.employees)
p employee1.salary
p employee2.salary

p "Current active status: "
p employee1.active
p employee2.active
p "Firing employees...."
manager.fire_all_employess
p "New active status: "
p employee1.active
p employee2.active