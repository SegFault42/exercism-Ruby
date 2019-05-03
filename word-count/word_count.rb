class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    hash = Hash.new(0)
    @phrase.split(/[^A-Za-z0-9']+/).each do |elem|
      if elem[0] == '\''
        elem = elem[1..-1]
      end
      if elem[-1] == '\''
        elem = elem[0..-2]
      end

      if elem.length != 0
        hash[elem.downcase] += 1
      end
    end

    return hash
  end
end
