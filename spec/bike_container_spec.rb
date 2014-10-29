require './lib/bike_container.rb'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

end

require './lib/dock.rb'

describe DockingStation do

	let(:station) {DockingStation.new(:capacity => 123)}
	it "should allow setting default capacity when initializing" do
		expect(station.capacity).to eq(123)
	end

end