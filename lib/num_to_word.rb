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
    ''
  end
end
