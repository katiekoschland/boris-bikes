require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  #it { expect(subject.release_bike).to be_an_instance_of Bike}
  it 'docking station returning a working bike'do
    bike = subject.release_bike
    expect(bike.working?).to be true
  end
end
