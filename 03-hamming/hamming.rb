class Hamming
  def initialize
  end

  def self.compute(strand_1, strand_2)
    diff = 0
    if strand_1 == strand_2
      return diff
    elsif strand_1.length != strand_2.length
      raise ArgumentError.new("These strands are not the same length")
    end

    strand_1.length.times do |i|
      if strand_1[i-1] != strand_2[i-1]
      diff += 1
      end
    end

    return diff
  end
end
