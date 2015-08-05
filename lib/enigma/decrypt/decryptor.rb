require './lib/enigma/encrypt/cipher'
require './lib/enigma/decrypt/decrypt_key_generator'
require './lib/enigma/encrypt/offset'

class Decryptor

  def initialize(key, date)
    time = DecryptCurrentDate.new(date).takes_last_four_digits
    @offset = Offset.new(time).split_time(time)
    @valid_key = DecryptKeyGenerator.new(key)
    @cipher = Cipher.new.cipher
  end

  def generates_file_rotation_value
    final_rotation_values = @offset.zip(@valid_key.find_array_rotation)
    final_rotation_values.map do |element|
      element.reduce(:+)
    end
  end

  def decrypt_letter(phrase, multiplier = -1)
    phrase.chars.map.with_index do |k,index|
       cipher_for_rotation = creates_rotation_hash(generates_file_rotation_value[(index % 4)] * multiplier)
       cipher_for_rotation[k]
    end.join
  end

  def creates_rotation_hash(number_of_rotations)
    rotated_characters = @cipher.rotate(number_of_rotations)
    Hash[@cipher.zip(rotated_characters)]
  end
end


