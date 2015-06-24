# Command Line Script for NumToWord

require_relative 'lib/num_to_word.rb'

puts NumToWord.new(ARGV[0]).to_string
