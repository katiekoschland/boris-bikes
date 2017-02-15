# docking_station = DockingStation
class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = Array.new
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
  end

  def show_docked
    docked_bikes
  end

end
