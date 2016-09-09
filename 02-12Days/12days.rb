require 'ordinalize'

class Xmas
  attr_accessor :gifts
    GIFTS = ["a partridge in a pear tree",
      "two turtle doves",
      "three french hens",
      "four calling birds",
      "FIVE GOLDEN RINGS",
      "six geese-a-laying",
      "seven swans-a-swimming",
      "eight maids-a-milking",
      "nine ladies dancing",
      "ten lords-a-leaping",
      "eleven pipers piping",
      "twelve drummers drumming"]

  def initialize

  end

  def self.gifts(num)
    collect_gifts = []

    (num + 1).times do |i|
      collect_gifts << GIFTS[i]
    end

    #This allows for the adding of the word "and" to the partridge line if we're on the 2nd or later day of Xmas.
    if collect_gifts.length > 1
      collect_gifts.reverse!
      collect_gifts[-1] = "and " + collect_gifts[-1]
    end

    return collect_gifts
  end

  def self.verse(num)
    if num < 11
      day_count = (num + 1).ordinalize
    elsif num == 11
      day_count = "twelfth" #for some reason, .ordinalize returns "twelveth" instead of "twelfth"
    end

    verse = "On the #{day_count} day of Christmas my true love gave to me\n"
    add_gifts = gifts(num).join("\n")
    verse += add_gifts
    return verse
  end

  def self.sing
    whole_song = []

    12.times do |i|
      whole_song << verse(i)
    end

    song = whole_song.join("\n\n")
    return song
  end
end

# def test_day_two_gift
#   l1 = "two turtle doves"
#   l2 = "and a partridge in a pear tree"
#   g1, g2 = Xmas.gifts(1)
#
#   assert_equal l1, g1
#   assert_equal l2, g2
# end

# ,
#   "two turtle doves",
#   "three french hens",
#   "three french hens",
#   "four calling birds",
#   "FIVE GOLDEN RINGS",
#   "six geese-a-laying",
#   "seven swans-a-swimming",
#   "eight maids-a-milking",
#   "nine ladies dancing",
#   "ten lords-a-leaping",
#   "eleven pipers piping",
#   "twelve drummers drumming"]
