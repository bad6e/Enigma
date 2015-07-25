#COMBINE THE KEY GENERATOR WITH THE OFFSET
require './lib/key_generator'
require './lib/offset'




class Runner

  def rotate
    date = CurrentDate.new
    offset = date.calculate_offset
    k = KeyGenerator.new
    puts final_rotation_a = offset.find_offset_a + k.find_rotation_a
    puts final_rotation_b = offset.find_offset_b + k.find_rotation_b
  end

  #Build Character Map
  #Build Encryptor Method
  #Open file
  #Encrypt file
  #Write new encrypted file


end

input = Runner.new
input.rotate





#Encryptor Method
#Offset Method - counts the rotation for each character