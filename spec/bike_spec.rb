require 'bike'

describe Bike do
  it { is_expected.to respond_to :broken?}
  it 'is broken' do
    expect(Bike.new.broken?).to eq false
  end
end
