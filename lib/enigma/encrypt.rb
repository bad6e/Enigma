require './lib/enigma/file_reader'
require './lib/enigma/encryptor'
require './lib/enigma/key_generator'
require './lib/enigma/file_writer'

input = ARGV[0] || "message.txt"

class Runner
  def initialize(input)
    message = FileReader.new(input).file_reader
    message_encrypt = Encryptor.new

    message_to_be_encrypted = message_encrypt.encrypt_letter(message)

    # message_to_be_decrypted = message_encrypt.decrypt_letter(message_to_be_encrypted)


    key = message_encrypt.key
    current_date = CurrentDate.new.current_date
    FileWriter.new(message_to_be_encrypted).file_writer
    puts "Created 'encrytped.txt' with the key #{key} and date #{current_date}"
  end
end

Runner.new(input)








