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

