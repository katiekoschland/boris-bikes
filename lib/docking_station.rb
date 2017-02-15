# docking_station = DockingStation
class DockingStation
  attr_reader :docked_bikes

  def release_bike
    return docked_bikes unless docked_bikes.nil?
    raise "Sorry, no bikes left!"
  end

  def dock(bike)
    @docked_bikes = bike
  end

  def show_docked
    docked_bikes
  end

end
