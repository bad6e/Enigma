require_relative 'test_helper'
require 'enigma/runner'


class RunnerTest < Minitest::Test

  def setup
    date = "270715"
    @offset = Offset.new(date)
    @valid_key = KeyGenerator.new
    @cipher = Cipher.new.cipher
  end

  def test_key_generates
    skip
    input =
    assert_equal 5, input.key.length
  end

  def test_finds_correct_final_rotation_a
    input = Runner.new
    expected = input.offset# input = Offset.new("270715")
    assert_equal 13, input.finds_final_rotation_a
  end

  def test_finds_correct_final_rotation_b
    skip
    input = Runner.new
    assert_equal 12 , input.finds_final_rotation_b
  end

  def test_finds_correct_final_rotation_c
    skip
    input = Runner.new
    assert_equal 12 , input.finds_final_rotation_c
  end

  def test_finds_correct_final_rotation_d
    skip
    input = Runner.new
    assert_equal 12 , input.finds_final_rotation_d
  end
end


