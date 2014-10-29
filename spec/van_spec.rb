require 'van'

describe Van do 
	
	it "class should contain BikeContainer module" do
		van = Van.new
		bike = Bike.new
		expect(van.bike_count).to eq(0)
		van.dock(bike)
		expect(van.bike_count).to eq(1)
	end

end