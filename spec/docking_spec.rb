require "dock"

describe DockingStation do 

	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}

	def fill_station
		20.times {station.dock(Bike.new)}
	end

	it "should be able to accept bikes" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should be able to release bikes" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when the docking station is full" do
		expect(station).not_to be_full
		20.times {station.dock(Bike.new)}
		expect(station).to be_full
	end

	it "shouldn't accept a bike when full" do
		20.times {station.dock(Bike.new)}
		expect(station.bike_count).to eq(20)
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end
	#put {} when raising errors rather than (). Have to use code that is going to break with a block

	it "should provide a list of available bikes" do
		working, broken = Bike.new, Bike.new
		station.dock(working)
		broken.break!
		station.dock(broken)
		expect(station.available_bikes).to eq([working])
	end

end






#Must be able to accept bikes
#Must be able to release bikes
#Must have capacity limit
#If a bike is broken, the docking station shouldn't release

#working = double : bike, broken?:false
#double- take a method and then hashes(key & value)
#allow(working).to recieve(:broken?).and_return(false)

