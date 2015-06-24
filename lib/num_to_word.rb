class NumToWord
  NAMES = {
    '0' => 'zero',
    '1' => 'one',
    '2' => 'two',
    '3' => 'three',
    '4' => 'four',
    '5' => 'five',
    '6' => 'six',
    '7' => 'seven',
    '8' => 'eight',
    '9' => 'nine',
    '10' => 'ten',
    '11' => 'eleven',
    '12' => 'twelve',
    '13' => 'thirteen',
    '14' => 'fourteen',
    '15' => 'fifteen',
    '16' => 'sixteen',
    '17' => 'seventeen',
    '18' => 'eighteen',
    '19' => 'ninteen',
    '20' => 'twenty',
    '30' => 'thirty',
    '40' => 'fourty',
    '50' => 'fifty',
    '60' => 'sixty',
    '70' => 'seventy',
    '80' => 'eighty',
    '90' => 'ninty',
    '00' => 'hundred',
    '000' => 'thousand',
    '000000' => 'million',
    '000000000' => 'billion'
  }

  def initialize number
    @string_number = number.to_s.gsub(/,/, '')
    @string_name = parse
  end

  def to_string
    @string_name
  end

  private

  def parse
    num_array = @string_number.split('').reverse.each_slice(3).to_a.map { |a| a.reverse }.reverse
    string_name_array = []
    num_array.each_with_index do |group, index|
      string_name_array << handle_group(group, (num_array.length - (index + 1)))
    end

    string_name_array.flatten.join(' ')
  end

  def handle_group group, position = 0, name_array = []
    length ||= group.length
    elem = group.shift

    case length
    when 1
      name_array << NAMES[elem]
    when 2
      name_array << NAMES[ elem + '0' ]
      name_array << handle_group(group)
    when 3
      name_array << NAMES[ elem ]
      name_array << NAMES[ '00' ]
      name_array << handle_group(group)
    end

    pos = '000' * position
    unless pos.empty?
      name_array << NAMES[pos]
    end

    name_array
  end
end
