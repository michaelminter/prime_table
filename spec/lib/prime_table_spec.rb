require_relative '../spec_helper'

describe Prime do
  describe '.first' do
    subject { described_class.first(10) }

    it 'returns array(n) of prime numbers' do
      expect(subject).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end

  describe '.prime?' do
    subject { described_class.prime?(number) }

    context 'given number is not prime' do
      let(:number) { 4 }

      it 'returns false' do
        expect(subject).to eq(false)
      end
    end

    context 'given number is prime' do
      let(:number) { 5 }

      it 'returns true' do
        expect(subject).to eq(true)
      end
    end
  end
end

describe PrimeData do
  describe '#generate' do
    subject { described_class.new(rows: 2, columns: 2).generate }

    it 'returns array of arrays' do
      expect(subject).to eq([[4, 6], [6, 9]])
    end
  end

  describe '#tabulate' do
    subject { described_class.new(rows: 2, columns: 2).tabulate }

    it 'returns array of arrays' do
      expect(subject).to eq([[nil, 2, 3], [2, 4, 6], [3, 6, 9]])
    end
  end

  describe '#prepend_array' do
    subject { described_class.new.send(:prepend_array, 0, [1]) }

    it 'returns array' do
      expect(subject).to eq([0, 1])
    end
  end
end

describe PrimeTable do
  describe '#build' do
    subject { described_class.new(data).build }
    let(:data) { PrimeData.new(rows: 2, columns: 2).tabulate }

    it 'returns terminal table' do
      expect(subject).to be_a(Terminal::Table)
    end
  end
end
