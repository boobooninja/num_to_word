require 'spec_helper'
require 'num_to_word'

describe NumToWord do

  before do
    @instance = NumToWord.new(123)
  end

  describe 'new' do
    it 'should accept one argument' do
      expect(NumToWord).to respond_to(:new).with(1).argument
    end

    it 'should return an object of class NumToWord' do
      expect(@instance).to be_a(NumToWord)
    end

    it 'should set attributes @string_number and @string_name' do
      expect(@instance.instance_variable_get(:@string_number)).to eq('123')
      expect(@instance.instance_variable_get(:@string_name)).to eq('one hundred twenty three')
    end

    context 'when number is a string and contains commas' do
      it 'should remove any commas from the number' do
        expect(NumToWord.new('1,000').instance_variable_get(:@string_number)).to eq('1000')
      end
    end

    context 'when number is very long' do
      it 'should still work' do
        expect(NumToWord.new('87,934,216').instance_variable_get(:@string_number)).to eq('87934216')
      end
    end
  end

  describe 'NAMES' do
    it 'should return a hash of mappings' do
      expect(NumToWord::NAMES).to be_a(Hash)
    end
  end

  describe '#to_string' do
    it 'should return the number as human readable format' do
      expect(NumToWord.new(87634592).to_string).to eq('eighty seven million six hundred thirty four thousand five hundred ninty two')
    end
  end
end
