require 'docking_station'

describe DockingStation do

  it 'docking station can be initialized with any capacity' do
    allow(subject).to receive(:initialize).with(an_instance_of(Object))
  end

  it 'when capacity is not given, use default' do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  # should have a release_bike method
  it {is_expected.to respond_to :release_bike}

  it 'docking station return the same bike which was previously docked' do
    bike1 = Bike.new
    subject.dock(bike1)
    bike2 = subject.release_bike
    expect(bike2).to eq bike1
  end

  it "return an error message if dock is empty" do
    expect {subject.release_bike}.to raise_error("No bikes available") #if subject.docked_bikes == nil
  end

  # should have a dock method
  it {is_expected.to respond_to :dock}

  it "check if docking station is receiving a bike when dock is called" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    allow(subject).to receive(:dock).with(an_instance_of(Bike)) {raise "station not receiving a Bike object"}
  end

  it "return an error message if dock is full" do
    bikes = DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect {subject.dock(bikes)}.to raise_error("Full capacity") #if subject.docked_bikes == nil
  end

  # should have a docked_bikes method / docked_bikes instance variable shoud be accessible
  it {is_expected.to respond_to :docked_bikes}

  it "docking station should return all docked bikes when docked_bikes is called" do
    bikes = Array.new
    DockingStation::DEFAULT_CAPACITY.times {bikes.push(subject.dock(Bike.new))}
    expect(subject.docked_bikes).to eq bikes
  end

# Old tests

=begin
    it 'bike responds to working and returns true' do
      bike = Bike.new
      expect(bike).to be_working
    end
=end

#it { expect(subject.release_bike).to be_an_instance_of Bike}

end
