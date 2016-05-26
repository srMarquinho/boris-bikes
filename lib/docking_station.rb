require_relative 'bike'
require_relative 'repair'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
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
