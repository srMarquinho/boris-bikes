require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }

	it 'responds to release_bike' do
		expect(subject).to respond_to :release_bike
	end

  
	  it 'releases a working bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
	 end

	it 'responds to dock' do
	  expect(subject).to respond_to :dock
	end

	it 'accepts an argument' do
		expect(subject).to respond_to(:dock).with(1).arguments
	end

  it 'docks a bike' do
    allow(bike).to receive(:working?).and_return(true)
    expect(subject.dock(bike)).to eq subject.bikes
  end

  it "has a docked bike" do
     expect(subject).to respond_to :bikes
  end

    describe '#release_bike' do
      it 'doesnt return a bike if empty' do
        expect {subject.release_bike}.to raise_error("We have no bikes!")
      end
      it 'doesnt release a broken bike' do
        bike = double(:bike)
        bike.report_broken
        subject.dock(bike)
        expect {subject.release_bike}.to raise_error(RuntimeError, "We have no working bikes!")
      end
    end

    describe '#dock' do
      it 'cannot return bike if full' do
        DockingStation::DEFAULT_CAPACITY.times{ subject.dock(double(:bike))}
        expect {subject.dock(double(:bike))}.to raise_error("We have no space!")
      end
    end

      describe DockingStation.new do
        it { is_expected.to have_attributes(:capacity => DockingStation::DEFAULT_CAPACITY) }
        it { is_expected.to have_attributes(:bikes => []) }
      end

end
