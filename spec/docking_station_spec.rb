require "docking_station"

describe DockingStation do

  # it { is_expected.to respond_to(:dock).with(1).argument }
  # it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      d = DockingStation.new
      d.dock(bike)
      p subject.release_bike
      p subject.release_bike
      expect(d.release_bike).to eq bike
    end
  end


  # it 'should get a bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
  #
  # #it {is_expected.to respond_to(:dock).with(1).argument}
  #
  # it 'docks something' do
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end
  #
  # #it {is_expected.to respond_to(:bike)}
  #
  # it 'returns docked bike' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end



end


#expect { ... }.to throw_symbol(:symbol, 'value')
