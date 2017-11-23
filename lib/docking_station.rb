require_relative 'bike'

class DockingStation

  def initialize
    super
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end


  def dock(bike)
    if @bikes.full?
      @bikes << bike
    end
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
