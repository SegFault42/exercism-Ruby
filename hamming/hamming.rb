class Hamming
  def self.compute(string1, string2)
    raise ArgumentError, "SegFault42 Error" unless string1.length == string2.length

    mismatch = 0

    string1.chars.zip(string2.chars).each do |one, two|
      if one != two
        mismatch +=1
      end
    end

    return mismatch
  end
end
