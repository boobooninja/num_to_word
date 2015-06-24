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
  end
end
