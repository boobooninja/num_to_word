require 'spec_helper'

describe 'convert.rb script' do
  it 'should use NumToWord to print the english version of the number' do
    expect(`ruby convert.rb 123`).to eq("one hundred twenty three\n")
  end
end
