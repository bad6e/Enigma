#Take in the input file name from the command line
#Read the text into a string
class FileReader

  def initialize(filename)
    @filename = filename
  end

  def file_reader
    file_input = File.open(@filename,'r')
    data = file_input.read
    file_input.close
    data
  end
end





