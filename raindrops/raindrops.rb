class Raindrops
  def self.convert(n)
    string = ""

    if n % 3 == 0
      string << "Pling"
    end
    if n % 5 == 0
      string << "Plang"
    end
    if n % 7 == 0
      string << "Plong"
    end
    if string == ""
      string = n.to_s
    end

    return string
  end
end

