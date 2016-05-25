require_relative 'bike'

class DockingStation

attr_reader :bike

	def release_bike
		raise "We have no bikes!" unless @bike
    @bike
	end

	def dock(bike)
    raise "We have no space!" if @bike
    @bike = bike
	end

end

