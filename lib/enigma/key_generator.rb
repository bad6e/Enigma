#Initialize it when run the runner (nice English)
#Generate an output valid key
class KeyGenerator

  attr_accessor :random

  def initialize
    @random = 5.times.map { (1..9).to_a.sample }.join
  end

  def split_random
    @random.split("")
  end

  def find_rotation_a
    split_random[0..1].join
  end

  def find_rotation_b
    split_random[1..2].join
  end

  def find_rotation_c
    split_random[2..3].join
  end

  def find_rotation_d
    split_random[3..4].join
  end
end

