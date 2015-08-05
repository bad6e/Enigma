require './lib/enigma/encrypt/file_reader'
require './lib/enigma/crack/cracker'
require './lib/enigma/decrypt/decrypt_file_writer'
require './lib/enigma/encrypt/cipher'


input = ARGV[0] || "encrypted.txt"
input_1 = ARGV[1] || "cracked.txt"
input_2 = ARGV[2] || "290715"

class CrackRunner
  def initialize(input, input_1, input_2)
    message = FileReader.new(input).file_reader
    message_crack = Cracker.new
    @message_to_be_cracked = message_crack.put_in_order(message)
    FileWriter.new(decrypt_letter(message), input_1).file_writer
    puts "Created #{input_1} with the key #{@message_to_be_cracked} date #{input_2}"
  end


  def decrypt_letter(phrase)
    decryptor = Decryptor.new(phrase, @message_to_be_cracked)
    decryptor.decrypt_letter(phrase)
  end
end

CrackRunner.new(input, input_1, input_2)











