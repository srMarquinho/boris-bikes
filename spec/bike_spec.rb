require 'bike'

describe Bike do
  it 'responds to working?' do
  expect(subject).to respond_to :working?
end

  it 'expect a bike to be working' do
    expect(subject.working?).to eq true
  end

  it 'responds to report_broken' do
    expect(subject).to respond_to :report_broken
  end

  it 'when reported broken subject.working? should return false' do
    subject.report_broken
    expect(subject.working?).to eq false
  end
end

