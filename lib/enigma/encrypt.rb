require './enigma/lib/file_reader'
require './enigma/lib/runner'
require './enigma/lib/key_generator'
require './enigma/lib/file_writer'

input = ARGV[0] || "message.txt"

class Encrypt
  def initialize(input)
    message = FileReader.new(input).file_reader
    current_date = Runner.new.current_date
    key = KeyGenerator.new.random
    FileWriter.new(message).file_writer
    puts "Created 'encrytped.txt' with the key #{key} and date #{current_date}"
  end
end

Encrypt.new(input)








