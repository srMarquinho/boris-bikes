require_relative 'bike'
require_relative 'van'

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

  def release_broken
    raise "All bikes are working!" if @bikes.all? {|bike| bike.working?}
    @bikes.shift
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
