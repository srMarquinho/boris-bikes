require 'docking_station'

describe DockingStation do
	it 'responds to release_bike' do
		expect(subject).to respond_to :release_bike
	end

	it 'releases a working bike' do
    bike = Bike.new
		expect(bike).to be_working
	end

	it 'responds to dock' do
	  expect(subject).to respond_to :dock
	end

	it 'accepts an argument' do
		expect(subject).to respond_to(:dock).with(1).arguments
	end

  it 'docks a bike' do
    expect(subject.dock(Bike.new)).to eq subject.bikes
  end

  it "has a docked bike" do
     expect(subject).to respond_to :bikes
  end

    describe '#release_bike' do
      it 'doesnt return a bike if empty' do
        expect {subject.release_bike}.to raise_error("We have no bikes!")
      end
    end

    describe '#dock' do
      it 'cannot return bike if full' do
        DockingStation::DEFAULT_CAPACITY.times{ subject.dock(Bike.new)}
        expect {subject.dock(Bike.new)}.to raise_error("We have no space!")
      end
    end
end
