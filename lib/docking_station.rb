# docking_station = DockingStation
class DockingStation
  attr_reader :docked_bikes

def initialize
  @docked_bikes = Array.new
end

  def release_bike
    #return docked_bikes unless docked_bikes.nil?
    #raise "Sorry, no bikes left!"

    fail "No bikes available" unless @docked_bikes.length > 0
    @docked_bikes.last
  end

  def dock(bike)
    #return raise "Sorry, no space left!" if docked_bikes
    #@docked_bikes = bike
    fail "Full capacity" if @docked_bikes.length == 20
    @docked_bikes.push(bike)
    bike
  end

  def show_docked
    docked_bike
  end

end
