require "bike"

describe Bike do
  # it "should be working" do
  #   bike = Bike.new
  #   expect(bike).to be_working
  # end
  # it { is_expected.to respond_to :working?}

  it 'report broken bike' do
    bike = Bike.new
    bike.report_broken
    expect(bike.working).to be false
  end

end
