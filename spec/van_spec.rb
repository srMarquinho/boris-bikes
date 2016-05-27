require 'van'

describe Van  do
    it 'collects broken bikes from docking station' do
      expect(subject).to respond_to :collect_broken
    end

    it 'delivers broken bikes to garage' do
      expect(subject).to respond_to :deliver_broken
    end

    it 'collects fixed bikes from garage' do
      expect(subject).to respond_to :collect_fixed
    end

    it 'delivers fixed bikes to docking station' do
      expect(subject).to respond_to :deliver_fixed
    end


end