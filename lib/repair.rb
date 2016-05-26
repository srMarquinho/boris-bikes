class Repair
  attr_accessor :van

  def initialize
    @van = van
  end

  def garage(van)
    new_van = []
    @van.each do |bike|
      bike.broken = false
      new_van << bike
    end
    new_van
  end
end
