require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike)}

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq [bike]
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  # describe '#full?' do
  #   it 'dock is full' do
  #     20.times { subject.dock(Bike.new) }
  #     expect(subject=).to eq true
  #   end
  # end
  #
  # describe '#empty?' do
  #   it 'dock is empty' do
  #     expect(subject.empty?).to eq true
  #   end
  # end
  describe '#initialize' do
    it 'default number of bikes' do
      expect(DockingStation::DEFAULT_CAPACITY).to eq(20)
    end
  end
end
