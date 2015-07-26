require './lib/enigma/current_date'

class Offset

  attr_accessor :offset

  def initialize(time)
    #This takes a string
    @offset = time
  end

  def split_time
    @offset.split("")
  end

  def find_offset_a
    @offset[0].to_s
  end

  def find_offset_b
    @offset[1].to_s
  end

  def find_offset_c
    @offset[2].to_s
  end

  def find_offset_d
    @offset[3].to_s
  end

end



