require './lib/enigma/encrypt/key_generator'
require './lib/enigma/encrypt/offset'
require './lib/enigma/encrypt/cipher'

class Encryptor

  attr_reader :date, :offset, :key

  def initialize
    date_array = CurrentDate.new.takes_last_four_digits
    @offset = Offset.new(date_array).split_time(date_array)
    @valid_key = KeyGenerator.new
    @cipher = Cipher.new.cipher
  end

  def key
    @valid_key.key_for_display_prompt
  end

  def generates_file_rotation_value
    final_rotation_values = @offset.zip(@valid_key.find_array_rotation)
    final_rotation_values.map do |element|
      element.reduce(:+)
    end
  end

  def strip(phrase)
    phrase.gsub(/[!@#$%^&*)]/,"").downcase
  end


  def encrypt_letter(phrase, multiplier = 1)
     strip(phrase).chars.map.with_index do |k,index|
       cipher_for_rotation = creates_rotation_hash(generates_file_rotation_value[(index % 4)] * multiplier)
       cipher_for_rotation[k]
     end.join
 end

  def creates_rotation_hash(number_of_rotations)
    rotated_characters = @cipher.rotate(number_of_rotations)
    Hash[@cipher.zip(rotated_characters)]
  end
end



