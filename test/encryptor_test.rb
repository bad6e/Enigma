require_relative 'test_helper'
require 'enigma/encrypt/encryptor'


class EncryptorTest < Minitest::Test


  def test_encrypt_phrase_is_random
    results = []
    100.times do
      input = Encryptor.new
      results << input
    end
    assert_equal 100, results.uniq.count
  end

  def test_final_rotation_is_length_is_correct
    input = Encryptor.new
    assert_equal 4, input.generates_file_rotation_value.count
  end

  def test_final_rotation_is_length_is_correct
    input = Encryptor.new
    assert_equal 4, input.generates_file_rotation_value.count
  end

  def test_final_rotation_are_fixnums
    input = Encryptor.new
    assert_equal Fixnum, input.generates_file_rotation_value[0].class
  end

  def test_encrypted_phrase_matches_the_input_phrase_length
    input = Encryptor.new
    assert_equal 5, input.encrypt_letter("Hello").length
  end

  def test_creates_the_correct_rotation_hash_length
    input = Encryptor.new
    assert_equal 39, input.creates_rotation_hash(1).length
  end

  def test_number_of_rotations_is_not_negative
    input = Encryptor.new
    assert_equal true, input.generates_file_rotation_value[0] > 0
    assert_equal true, input.generates_file_rotation_value[1] > 0
    assert_equal true, input.generates_file_rotation_value[2] > 0
    assert_equal true, input.generates_file_rotation_value[3] > 0
  end

  def test_creates_the_correct_rotation_hash
    input = Encryptor.new
    hash = input.creates_rotation_hash(1)
    assert_equal hash["a"], "b"
    assert_equal hash[","], "a"
  end
end


