require './lib/enigma/encrypt/current_date'
require './lib/enigma/decrypt/decrypt_current_date'

class Offset

  attr_accessor :offset

  def initialize(time)
    @offset = split_time(time)
  end

  def split_time(time)
    time.split("").map(&:to_i)
  end
end




