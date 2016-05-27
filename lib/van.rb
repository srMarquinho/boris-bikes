require_relative 'docking_station'

class Van

  def initialize
    @van = []
  end

  def collect_broken(bike)
    @van << bike if bike.working? == false
  end

  def deliver_broken
  end

  def collect_fixed
  end

  def deliver_fixed
  end
end
