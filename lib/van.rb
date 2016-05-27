require_relative 'docking_station', 'bike'
class Van

  def initialize
    @van = []
  end

  def collect_broken(bike)
    @van << bike if bike.working? == false
    p @van
  end

  def deliver_broken
  end

  def collect_fixed
  end

  def deliver_fixedva
  end
end