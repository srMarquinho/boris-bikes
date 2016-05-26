require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_accessor :capacity

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    raise "sorry, dock is full" if @bike
    @bike = bike
  end

  def no_bikes
    raise "sorry, no bikes"
  end

  def bike
    @bike
  end
end
