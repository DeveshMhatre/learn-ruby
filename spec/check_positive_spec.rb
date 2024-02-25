require 'check_positive'

describe CheckPositive do
  describe '.init' do
    context 'given 0' do
      it 'returns "zero"' do
        expect(CheckPositive.init(0)).to eq('zero')
      end
    end
    context 'positive numbers' do
      context 'given 5' do
        it 'returns "positive"' do
          expect(CheckPositive.init(5)).to eq('positive')
        end
      end
      context 'given 1002' do
        it 'returns "positive"' do
          expect(CheckPositive.init(1002)).to eq('positive')
        end
      end
    end
    context 'negative numbers' do
      context 'given -5' do
        it 'returns "negative"' do
          expect(CheckPositive.init(-5)).to eq('negative')
        end
      end
      context 'given -1002' do
        it 'returns "negative"' do
          expect(CheckPositive.init(-1002)).to eq('negative')
        end
      end
    end
  end
end
