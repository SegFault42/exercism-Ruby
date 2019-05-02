class HighScores
  attr_accessor :score

  def initialize(scores)
    @score = scores
  end

  def scores
    return score
  end

  def latest
    return score[-1]
  end

  def personal_best
    return score.max
  end

  def personal_top_three
    return score.max(3)
  end
end
