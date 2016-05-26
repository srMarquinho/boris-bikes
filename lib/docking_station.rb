require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		raise "We have no bikes!" if empty?
    @bikes.pop
	end

	def dock(bike)
    raise "We have no space!" if full?
    @bikes <<  bike
	end

private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
