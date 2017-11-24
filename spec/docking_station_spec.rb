require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      d = DockingStation.new
      d.dock(bike)
      expect(d.release_bike).to eq bike
    end


    it 'raises an error when there are no bikes in the docking station' do
      d = DockingStation.new
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end



    describe '#docking' do
      it 'raises an exception when user attempts to dock bike in full station' do
        d = DockingStation.new
        DockingStation::DEFAULT_CAPACITY.times { d.dock(Bike.new) }
        expect { d.dock(Bike.new) }.to raise_error 'Docking station full'
      end
    end
  end


  it 'should get a working bike' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  #it {is_expected.to respond_to(:dock).with(1).argument}

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq subject.bikes.push(bike)
  end

  #it {is_expected.to respond_to(:bike)}

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq subject.bikes.push(bike)
  end

  it 'default capacity is set' do
    expect{DockingStation.new(30)}.to_not raise_error
    expect{DockingStation.new}.to_not raise_error
    d = DockingStation.new
    expect(d.capacity).to eq 20
  end


end
