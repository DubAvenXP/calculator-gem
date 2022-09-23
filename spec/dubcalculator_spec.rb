require 'dubcalculator'

describe Dubcalculator::Basic do
    it 'can add two numbers' do
        expect(Dubcalculator::Basic.add(1, 2)).to eq(3)
    end

    it 'cannot add strings' do
        expect(Dubcalculator::Basic.add('1', '2')).to eq(nil)
    end

    it 'can subtract two numbers' do
        expect(Dubcalculator::Basic.subtract(2, 2)).to eq(0)
    end

    it 'cannot subtract strings' do
        expect(Dubcalculator::Basic.subtract('2', '2')).to eq(nil)
    end

    it 'can multiply two numbers' do
        expect(Dubcalculator::Basic.multiply(2, 2)).to eq(4)
    end

    it 'cannot multiply strings' do
        expect(Dubcalculator::Basic.multiply('2', '2')).to eq(nil)
    end

    it 'can divide two numbers' do
        expect(Dubcalculator::Basic.divide(8, 2)).to eq(4)
    end

    it 'cannot divide by zero' do
        expect(Dubcalculator::Basic.divide(8, 0)).to eq(nil)
    end

    it 'cannot divide strings' do
        expect(Dubcalculator::Basic.divide('8', '2')).to eq(nil)
    end
end
