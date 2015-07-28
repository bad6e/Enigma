require './lib/enigma/file_reader'
require './lib/enigma/decryptor'
require './lib/enigma/key_generator'
require './lib/enigma/decrypt_file_writer'


input = ARGV[0]
input_1 = ARGV[1]
input_2 = ARGV[2]


class DecryptRunner
  def initialize(input, input_1, input_2)
    message = FileReader.new(input).file_reader
    message_decrypt = Decryptor.new(input_1, input_2)
    #Key and Date coming in as string
    message_to_be_decrypted = message_decrypt.decrypt_letter(message)
    FileWriter.new(message_to_be_decrypted).file_writer
  end
end

DecryptRunner.new(input, input_1, input_2)

