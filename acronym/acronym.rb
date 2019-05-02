class Acronym
  def self.abbreviate(phrase)
    array = phrase.split(/\W+/)
    acronym = ""

    array.each do |elem|
      acronym << elem[0].upcase
    end

    return acronym
  end
end
