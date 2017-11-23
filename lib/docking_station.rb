require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock(bike)
    fail 'Docking station full' if @bikes
    @bikes = bike
  end

end
