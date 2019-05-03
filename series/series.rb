class Series
  def initialize(string)
    @string = string
  end

  def slices(n)
    string_tmp = @string
    array = []

    raise ArgumentError, "Error" unless n <= string_tmp.length

    loop do
      array << string_tmp[0...n]
      string_tmp = string_tmp[1..-1]
      if string_tmp.length < n
        break
      end
    end

    return array
  end
end
