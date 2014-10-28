require './lib/person'
describe Person do 

	it "doesn't start with a bike" do
		person= Person.new
		expect(person.has_bike?).to be false
	end

	it "does have a bike" do
		person= Person.new
		person.ride!
		expect(person.has_bike?).to be true
	end

	# it "returns bike" do
	# 	person= Person.new
	# 	person.ride!
	# 	person.return!
	# 	expect(person.has_bike?).to be false
	# end

end

#has bike
#doesn't have bike 