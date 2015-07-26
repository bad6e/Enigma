#COMBINE THE KEY GENERATOR WITH THE OFFSET
require './lib/enigma/key_generator'
require './lib/enigma/offset'

class Runner

  def rotate
    date = CurrentDate.new
    offset = date.calculate_offset
    k = KeyGenerator.new
    puts final_rotation_a = offset.find_offset_a.to_i + k.find_rotation_a.to_i
    puts final_rotation_b = offset.find_offset_b.to_i + k.find_rotation_b.to_i
    puts final_rotation_c = offset.find_offset_c.to_i + k.find_rotation_c.to_i
    puts final_rotation_d = offset.find_offset_d.to_i + k.find_rotation_d.to_i

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