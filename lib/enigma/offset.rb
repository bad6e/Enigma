require './lib/enigma/current_date'

class Offset

  attr_accessor :offset

  def initialize(time)
    #This takes a string
    @offset = split_time(time)
  end

  def split_time(time)
    #now whenever we want to call @offset, we need to change to split_time
    time.split("").map(&:to_i)
  end

end




