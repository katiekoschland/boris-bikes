require 'docking_station'

describe 'docking_station' do
  it { DockingManager.should respond_to :release_bike}


it 'returns a new bike' do
  expect(release_bike).to eq Bike.new
end
end
