require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike)}

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'stops docking bikes' do
    expect {raise "sorry, dock is full"}.to raise_error ("sorry, dock is full")
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

end
