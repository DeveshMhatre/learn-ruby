require 'string_calculator'

describe StringCalculator do
  describe '.add' do
    context 'given an empty string' do
      it 'returns zero' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end
    context 'single numbers' do
      context 'given "4"' do
        it 'returns 4' do
          expect(StringCalculator.add('4')).to eq(4)
        end
      end
      context 'given "10"' do
        it 'returns 10' do
          expect(StringCalculator.add('10')).to eq(10)
        end
      end
    end
    context 'two numbers' do
      context 'given "2, 4"' do
        it 'returns 6' do
          expect(StringCalculator.add('2, 4')).to eq(6)
        end
      end
      context 'given "100, 16"' do
        it 'returns 116' do
          expect(StringCalculator.add('100,16')).to eq(116)
        end
      end
    end
  end
end
