require_relative 'student'

class Displayer
	def initialize(student)
		student.add_observer(self)
	end

	def update(student)
	# callback for observer
		print " student #{student.name} has a new address:  #{student.address}\n"
	end
end


## Driver ###
student = Student.new("John", 22, "Dublin2")
displayer = Displayer.new(student)
## note that by changing the address of the student because the displayer is an observer of the student the displayer is immediately notifed when changes occur in the student
student.address = "Mayor Street, IFSC"

puts student.name
