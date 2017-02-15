require './lib/docking_station'
require './lib/bike'

docking_station = DockingStation.new
first_bike = Bike.new
second_bike = Bike.new
#docking_station.release_bike
docking_station.dock(first_bike)
docking_station.release_bike
#docking_station.dock(second_bike)
