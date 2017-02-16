# docking_station = DockingStation
class DockingStation
  attr_reader :docked_bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @docked_bikes = Array.new
  end

  def release_bike
    #return docked_bikes unless docked_bikes.nil?
    #raise "Sorry, no bikes left!"
    fail "No bikes available" unless empty?
    @docked_bikes.last
  end

  def dock(bike)
    #return raise "Sorry, no space left!" if docked_bikes
    #@docked_bikes = bike
    fail "Full capacity" if full?
    @docked_bikes.push(bike)
    bike
  end

  def show_docked
    docked_bikes
  end

  #hello

  private
  def full?
   @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.length > 0
  end
end
