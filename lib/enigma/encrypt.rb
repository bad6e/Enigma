require './lib/enigma/file_reader'
require './lib/enigma/runner'
require './lib/enigma/key_generator'
require './lib/enigma/file_writer'

input = ARGV[0] || "message.txt"

class Encrypt
  def initialize(input)
    message = FileReader.new(input).file_reader
    message_encrypt = Runner.new
    message_to_be_encrypted = message_encrypt.encrypt_letter(message)
    key = message_encrypt.key
    @current_date = CurrentDate.new.current_date

    # current_date = Runner.new.encrypt_letter(message)
    FileWriter.new(message_to_be_encrypted).file_writer
    puts "Created 'encrytped.txt' with the key #{key.inspect} and date #{@current_date}"
  end
end

Encrypt.new(input)








