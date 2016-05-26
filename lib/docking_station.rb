require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def bike
    @bikes
  end

  def full?
    if @bikes.length >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes == []
      true
    else
      false
    end
  end

  private :full?, :empty?
end
