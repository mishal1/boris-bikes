class Person
	def initialize
		@has_bike = false
	end

	def has_bike?
		@has_bike
	end

	def ride!
		@has_bike = true
	end

end