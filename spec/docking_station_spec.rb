require 'docking_station'

describe DockingStation do

  it 'docking station can be initialized with any capacity' do
    allow(subject).to receive(:initialize).with(an_instance_of(Object))

  end

  it 'when capacity is not given, use default' do

  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY

end


  it {is_expected.to respond_to :release_bike} # should have a release_bike method

  #it { expect(subject.release_bike).to be_an_instance_of Bike}

  it 'docking station return the same bike which was previously docked'do
    bike1 = Bike.new
    subject.dock(bike1)
    bike2 = subject.release_bike
    expect(bike2).to eq bike1

  end
=begin
  it 'bike responds to working and returns true' do
    bike = Bike.new
    expect(bike).to be_working
  end
=end
  it "return an error message if dock is nil" do

    expect {subject.release_bike}.to raise_error("No bikes available") #if subject.docked_bikes == nil
  end

  it {is_expected.to respond_to :dock} # should have a dock method

  it "check if docking station is receiving a bike when dock is called" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    allow(subject).to receive(:dock).with(an_instance_of(Bike)) {raise "station not receiving a Bike object"}
  end

  it "return an error message if dock is full" do
    #bike = Bike.new
    bike = DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}

    #subject.dock(bike)
    expect {subject.dock(bike)}.to raise_error("Full capacity") #if subject.docked_bikes == nil
  end

  it {is_expected.to respond_to :docked_bikes}

  it "docking station should return all docked bikes when docked_bikes is called" do
    bike = Array.new
    DockingStation::DEFAULT_CAPACITY.times {bike.push(subject.dock(Bike.new))}

    expect(subject.docked_bikes).to eq bike
  end

end
