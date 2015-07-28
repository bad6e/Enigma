class FileWriter

  def initialize(message)
    @message = message
  end

  def file_writer
    file_output = File.open("decrypted.txt", 'w')
    file_output.write(@message)
    file_output.close
  end

end

