require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'No bikes available' if empty?
    raise 'No working bikes available' unless bikes.first.working?
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


#report upon docking
#not release broken bikes
#accept both broken and working bikes
