require_relative 'test_helper'
require 'enigma/offset'

class OffsetTest < Minitest::Test

  def test_takes_key_and_puts_it_into_an_array
    input = Offset.new("1225")
    assert_equal ["1","2","2","5"], input.split_time
  end

  def test_find_rotation_a
    input = Offset.new("1225")
    assert_equal "1" , input.find_offset_a
  end

  def test_find_rotation_b
    input = Offset.new("1225")
    assert_equal "2" , input.find_offset_b
  end

  def test_find_rotation_c
    input = Offset.new("1225")
    assert_equal "2" , input.find_offset_c
  end

  def test_find_rotation_d
    input = Offset.new("1225")
    assert_equal "5" , input.find_offset_d
  end

end

