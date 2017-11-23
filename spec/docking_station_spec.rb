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
        expect {d.dock(Bike.new)}.to raise_error 'Docking station full'
      end
    end
  end


  it 'should get a bike' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  #it {is_expected.to respond_to(:dock).with(1).argument}

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  #it {is_expected.to respond_to(:bike)}

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end


#expect { ... }.to throw_symbol(:symbol, 'value')
