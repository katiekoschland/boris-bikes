require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike} # should have a release_bike method

  #it { expect(subject.release_bike).to be_an_instance_of Bike}

  it 'docking station returning a working bike'do
    bike = subject.release_bike
    expect(bike.working?).to be true
  end

  it {is_expected.to respond_to :dock} # should have a dock method

  it "check if docking station is receiving a bike when dock is called" do
    allow(subject).to receive(:dock).with(an_instance_of(Bike)) {raise "station not receiving a Bike object"}
  end

  it {is_expected.to respond_to :show_docked}
  it "docking station should return a array of docked bikes when show_docked is called" do
    expect(subject.show_docked).to be_an_instance_of Array
  end

end
