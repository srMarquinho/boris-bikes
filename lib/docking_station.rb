require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def dock(bike)
    raise 'Docking station full' if full?
    bike.broken ? @broken_bikes << bike : @bikes << bike
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def bike
    @bikes
  end

  def full?
    (@bikes.length + @broken_bikes.length) >= capacity
  end

  def empty?
    @bikes == []
  end



  private :full?, :empty?
end
