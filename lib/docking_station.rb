require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20


  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes, :capacity

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end


  def dock(bike)
    raise "Docking station full" if full?
      @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
