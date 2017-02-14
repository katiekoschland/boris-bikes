require 'docking_station'

describe 'docking_station' do
  it { DockingManager.should respond_to :release_bike}
end
