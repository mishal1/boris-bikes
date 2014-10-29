require 'garage'

describe Garage do 

	it "class should contain BikeContainer Module" do
		station= Garage.new
		bike = Bike.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should accept a bike after it is fixed" do
		station = Garage.new
		bike = Bike.new
		bike.break!
		station.accept(bike)
		expect(station.bike_count).to eq(1)
	end

end