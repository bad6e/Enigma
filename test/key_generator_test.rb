require_relative 'test_helper'
require 'enigma/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_key_is_five_digits_long
    input = KeyGenerator.new
    assert_equal 5, input.random.length
  end

  def test_key_is_random
    results = []
    100.times do
      input = KeyGenerator.new
      results << input
    end
    assert_equal 100, results.uniq.count
  end

  def test_takes_key_and_puts_it_into_an_array
    input = KeyGenerator.new
    input.random = "12345"
    assert_equal ["1","2","3","4","5"] , input.split_random
  end

  def test_find_rotation_a
    input = KeyGenerator.new
    input.random = "12345"
    assert_equal "12" , input.find_rotation_a
  end

  def test_find_rotation_b
    input = KeyGenerator.new
    input.random = "12345"
    assert_equal "23" , input.find_rotation_b
  end

  def test_find_rotation_c
    input = KeyGenerator.new
    input.random = "12345"
    assert_equal "34" , input.find_rotation_c
  end

  def test_find_rotation_d
    input = KeyGenerator.new
    input.random = "12345"
    assert_equal "45" , input.find_rotation_d
  end
end

