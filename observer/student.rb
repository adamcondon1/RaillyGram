require_relative 'subject'

class Student
	include Subject
	attr_reader :name, :age
	attr_accessor :address

	def initialize( name, age, address )
		super()
		@name = name
		@age = age
		@address = address
	end


	def address=(new_address)
		@address = new_address
		notify_observers
	end

end
