class Scrabble
  def initialize(string)
    @string = string
  end

  def score
    Scrabble.score(@string)
  end

  def self.score(string)
    total = 0
    rules = {
      AEIOULNRST: 1,
      DG: 2,
      BCMP: 3,
      FHVWY: 4,
      K: 5,
      JX: 8,
      QZ: 10
    }

    if string == nil
      return 0
    end

    string.split('').each do |elem|
      rules.each do |key, value|
        nb = key.to_s.scan(/(?=#{elem.upcase})/).count
        if nb > 0
          total += (nb * value)
          break
        end
      end
    end
    return total
  end
end
