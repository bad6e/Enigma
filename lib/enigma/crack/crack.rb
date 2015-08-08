require './lib/enigma/encrypt/file_reader'
require './lib/enigma/crack/cracker'
require './lib/enigma/encrypt/file_writer'
require './lib/enigma/encrypt/cipher'


input = ARGV[0] || "encrypted.txt"
input_1 = ARGV[1] || "cracked.txt"
input_2 = ARGV[2] || "290715"

class CrackRunner

  def initialize(input, input_1, input_2)
    @cipher = Cipher.new.cipher
    message = FileReader.new(input).file_reader
    message_crack = Cracker.new
    @message_to_be_cracked = message_crack.put_in_order(message)
    FileWriter.new(decrypt_letter(message, -1), input_1).file_writer
    puts "Created #{input_1} with the key #{@message_to_be_cracked} date #{input_2}"
  end

 def decrypt_letter(phrase, multiplier = -1)
    phrase.chars.map.with_index do |k,index|
       cipher_for_rotation = creates_rotation_hash(@message_to_be_cracked[index % 4] * multiplier)
       cipher_for_rotation[k]
    end.join
  end

  def creates_rotation_hash(number_of_rotations)
    rotated_characters = @cipher.rotate(number_of_rotations)
    Hash[@cipher.zip(rotated_characters)]
  end
end

CrackRunner.new(input, input_1, input_2)











