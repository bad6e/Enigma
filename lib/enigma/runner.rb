#COMBINE THE valid_keyEY GENERATOR WITH THE OFFSET
require './lib/enigma/key_generator'
require './lib/enigma/offset'
require './lib/enigma/cipher'


class Runner

  attr_accessor :date, :offset, :key

  def initialize
    date_array = CurrentDate.new.takes_last_four_digits
    @offset = Offset.new(date_array).split_time(date_array)
    @valid_key = KeyGenerator.new.find_array_rotation
    @cipher = Cipher.new.cipher
  end

  def combines_offset_and_key_array
    final_rotation_values = @offset.zip(@valid_key)
    final_rotation_values.map do |element|
      element.reduce(:+)
    end
  end


  def encrypt_letter(phrase)
    downcase = phrase.downcase
    phrase = downcase.scan(/.{1,4}/)

    @final_results = []

    phrase.each do |phrase|
      phrase = phrase.split("")
      @results = []
      @final_results << @results

      phrase.each_with_index do |k,index|
        if index == 0
            cipher_for_rotation = creates_rotation_hash(combines_offset_and_key_array[0])
            @results << cipher_for_rotation[k]
        elsif index == 1
            cipher_for_rotation = creates_rotation_hash(combines_offset_and_key_array[1])
            @results << cipher_for_rotation[k]
        elsif index == 2
            cipher_for_rotation = creates_rotation_hash(combines_offset_and_key_array[2])
            @results << cipher_for_rotation[k]
        else
            cipher_for_rotation = creates_rotation_hash(combines_offset_and_key_array[3])
            @results << cipher_for_rotation[k]
        end
      end
      @results.join("")

    end
    @final_results.join("")
  end

  def creates_rotation_hash(number_of_rotations)
    rotated_characters = @cipher.rotate(number_of_rotations)
    Hash[@cipher.zip(rotated_characters)]
  end
end

# input = Runner.new
# puts input.combines_offset_and_key_array[0].inspect












  # def finds_final_rotation_a
  #   final_rotation_a = @offset.find_offset_a.to_i + @valid_key.find_rotation_a.to_i
  # end

  # def finds_final_rotation_b
  #   final_rotation_b = @offset.find_offset_b.to_i + @valid_key.find_rotation_b.to_i
  # end

  # def finds_final_rotation_c
  #   final_rotation_c = @offset.find_offset_c.to_i + @valid_key.find_rotation_c.to_i
  # end

  # def finds_final_rotation_d
  #   final_rotation_d = @offset.find_offset_d.to_i + @valid_key.find_rotation_d.to_i
  # end





