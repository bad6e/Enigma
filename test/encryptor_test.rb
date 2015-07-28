require_relative 'test_helper'
require 'enigma/encryptor'


class EncryptorTest < Minitest::Test

  def setup
    date_array = CurrentDate.new.takes_last_four_digits
    @offset = Offset.new(date_array).split_time(date_array)
    @valid_key = KeyGenerator.new
    @cipher = Cipher.new.cipher
  end

  def test_key_array_has_four_elements
    input = final_rotation_values = @offset.zip(@valid_key.find_array_rotation)
    final_rotation_values.map do |element|
      element.reduce(:+)
    end
    assert_equal 4, input.count
  end




end


