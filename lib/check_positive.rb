# Class that returns true if provided argument is positive
class CheckPositive
  def self.init(num)
    return 'zero' if num.zero?
    return 'negative' if num.negative?

    'positive'
  end
end
