require './lib/dock.rb'
# require './lib/person.rb'
require './lib/bike.rb'

describe DockingStation do
	let(:station) {station = DockingStation.new(:capacity => 20)}
	let(:bike) {bike = Bike.new}
	let(:dock) {station.dock(bike)}

	it "should accept the bike" do
		expect(station.bike_count).to eq(0)
		dock
		expect(station.bike_count).to eq(1)
	end

	it "should release a bike" do
		dock
		station.release(bike)
		expect(station.bike_count). to eq(0)
	end

	it "should know when full" do
		20.times{station.dock(bike)}
		expect(station.full?).to be true
	end

	it "should know when not full" do
		dock
		expect(station.full?).to be false
	end

	it "should not accept a bike when full" do
		20.times{station.dock(bike)}
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

end
