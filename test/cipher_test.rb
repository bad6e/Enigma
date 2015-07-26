require_relative 'test_helper'
require 'enigma/cipher'


class CipherTest < Minitest::Test
  def test_gives_back_correct_character_map
    input = Cipher.new
    assert_equal ["a","b","c","d"], input.cipher[0..3]
  end
end
