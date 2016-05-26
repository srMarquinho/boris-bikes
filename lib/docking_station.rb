require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_reader :capacity

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
    @capacity = capacity
	end

	def release_bike
		raise "We have no bikes!" if empty?
    raise "We have no working bikes!" if @bikes[-1].working? == false
    @bikes.pop
	end

	def dock(bike)
    raise "We have no space!" if full?
     if bike.working?
       @bikes <<  bike
     else
       @bikes.unshift(bike)
     end
	end

private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

end
