class TwoFer
  def self.two_fer(name="")
    phrase = "One for X, one for me."

    if name == ""
      phrase.gsub!("X", "you")
    else
      phrase.gsub!("X", name)
    end
  end
end
