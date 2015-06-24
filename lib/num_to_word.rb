class NumToWord

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
