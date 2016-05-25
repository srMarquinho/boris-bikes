require 'docking_station'

describe DockingStation do
	it 'responds to release_bike' do
		expect(subject).to respond_to :release_bike
	end

	it 'releases a working bike' do
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it 'responds to dock' do
		expect(subject).to respond_to :dock
	end

	it 'accepts an argument' do
		expect(subject).to respond_to(:dock).with(1).arguments
	end

  it 'docks a bike' do
		bike = Bike.new
    subject.dock(bike)
  	expect(subject.bike).to eq bike
  end

   it "has a docked bike" do
     expect(subject).to respond_to :bike
   end

end
