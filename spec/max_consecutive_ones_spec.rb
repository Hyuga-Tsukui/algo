require 'spec_helper.rb'

RSpec.describe 'max_consecutive_ones' do
  describe '#find_max_consecutive_ones' do
    it 'output 0' do
      expect(0).to eq find_max_consecutive_ones([0])
    end

    it 'output 2' do
      expect(2).to eq find_max_consecutive_ones([1,1,0,1])
    end

    it 'output 1' do
      expect(1).to eq find_max_consecutive_ones([1])
    end
  end
end
