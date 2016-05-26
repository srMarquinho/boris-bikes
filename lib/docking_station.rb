require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_accessor :capacity

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise 'Docking station full' if @bikes.length >= 20
    @bikes << bike
  end

  def release_bike
    raise 'No bikes available' if @bikes.length <= 0
    @bikes.pop
  end

  def bike
    @bikes
  end
end
