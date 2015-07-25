#Initialize it when run the runner (nice English)
#Generate an output valid key
class KeyGenerator

  attr_accessor :random

  def initialize
    @random = rand.to_s[2..6]
  end

  def split_random
    @random.split("")
  end

  def find_rotation_a
    @random[0..1].join
  end

  def find_rotation_b
    @random[1..2].join
  end

  def find_rotation_c
    @random[2..3].join
  end

  def find_rotation_d
    @random[3..4].join
  end
end

