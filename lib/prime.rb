class Prime
  def self.first(count)
    result = []
    var = 2

    loop do
      break if result.size == count
      result << var if prime?(var)
      var += 1
    end

    result
  end

  def self.prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end
end
