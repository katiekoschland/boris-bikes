require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike} # should have a release_bike method

  #it { expect(subject.release_bike).to be_an_instance_of Bike}

  it 'docking station return a bike, which is working'do
    bike = subject.release_bike
    expect(bike.working?).to be true
  end

  it {is_expected.to respond_to :dock} # should have a dock method

  it "check if docking station is receiving a bike when dock is called" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    allow(subject).to receive(:dock).with(an_instance_of(Bike)) {raise "station not receiving a Bike object"}
  end

  it {is_expected.to respond_to :docked_bikes}
  it "docking station should return a bike when docked_bikes is called" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.docked_bikes).to eq bike
  end

end
