#Takes the output filename from the command line
#Write out the encrypted string
class FileWriter

  def initialize(message)
    @message = message
  end

  def file_writer
    file_output = File.open("encrpyted.txt", 'w')
    file_output.write(@message)
    file_output.close
  end

end



#  def file_reader
#     file_input = File.open(@filename,'r')
#     data = file_input.read
#     file_input.close
#     return data
#   end
# end