class Isogram
  def self.isogram?(input)

    string = input.downcase.tr("- ", "")

    for letter in "a".."z" do
      if string.scan(/(?=#{letter})/).count > 1
        return false
      end
    end

    return true
  end
end
