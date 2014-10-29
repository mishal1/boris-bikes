class Bike
	def initialize
		@bike = false
	end

	def broken?
		@bike
	end

	def break!
		@bike = true
	end

	def fix!
		@bike = false
	end
end