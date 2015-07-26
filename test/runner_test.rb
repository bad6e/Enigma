require_relative 'test_helper'
require 'enigma/runner'


class RunnerTest < Minitest::Test

  def test_finds_correct_final_rotation_a
    skip
    input = Runner.new
    assert_equal 12, input.finds_final_rotation_a
  end
  # def test_finds_correct_final_rotation_b
  #   input = Offset.new("1225")
  #   assert_equal "1" , input.find_offset_a
  # end

  # def test_finds_correct_final_rotation_c
  #   input = Offset.new("1225")
  #   assert_equal "2" , input.find_offset_b
  # end

  # def test_finds_correct_final_rotation_d
  #   input = Offset.new("1225")
  #   assert_equal "2" , input.find_offset_c
  # end

end


