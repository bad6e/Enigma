require './lib/enigma/file_reader'
require './lib/enigma/runner'
require './lib/enigma/key_generator'
require './lib/enigma/file_writer'

input = ARGV[0] || "message.txt"

class Encrypt
  def initialize(input)
    message = FileReader.new(input).file_reader
    message_encrypt = Runner.new.encrypt_letter(message)

    # current_date = Runner.new.encrypt_letter(message)
    FileWriter.new(message_encrypt).file_writer
    # puts "Created 'encrytped.txt' with the key #{key} and date #{current_date}"
  end
end

Encrypt.new(input)








