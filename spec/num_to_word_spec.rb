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

    it 'should remove any commas from the number' do
      expect(NumToWord.new('1,000').instance_variable_get(:@string_number)).to eq('1000')
    end
  end

  describe 'NAMES' do
    it 'should return a hash of mappings' do
      expect(NumToWord::NAMES).to be_a(Hash)
    end
  end
end
