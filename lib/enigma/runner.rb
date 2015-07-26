#COMBINE THE valid_keyEY GENERATOR WITH THE OFFSET
require './lib/enigma/key_generator'
require './lib/enigma/offset'
require './lib/enigma/cipher'


class Runner

  attr_accessor :date, :offset, :valid_key

  def initialize
    date = CurrentDate.new.takes_last_four_digits
    @offset = Offset.new(date)
    @valid_key = KeyGenerator.new
    @cipher = Cipher.new.cipher
  end

  def finds_final_rotation_a
    final_rotation_a = @offset.find_offset_a.to_i + @valid_key.find_rotation_a.to_i
  end

  def finds_final_rotation_b
    final_rotation_b = @offset.find_offset_b.to_i + valid_key.find_rotation_b.to_i
  end

  def finds_final_rotation_c
    final_rotation_c = @offset.find_offset_c.to_i + valid_key.find_rotation_c.to_i
  end

  def finds_final_rotation_d
    final_rotation_d = @offset.find_offset_d.to_i + valid_key.find_rotation_d.to_i
  end

  def encrypt_letter(phrase)
    downcase = phrase.downcase
    phrase = downcase.scan(/.{1,4}/)

    #for element 1 run a

    #for element 2 run b

    #for element 3 run c
    @final_results = []
    phrase.each do |phrase|
      phrase = phrase.split("")


      @final_results << @results
      @results = []


      phrase.each_with_index do |val,index|
        if index == 0

          # results = phrase.each do |letter|

            #each time we go to a new letter - the parameter for rotation changes
            cipher_for_rotation = creates_rotation_hash(finds_final_rotation_a)
            @results << cipher_for_rotation[val]



        elsif index == 1

          # @results = phrase.each do |letter|

            #each time we go to a new letter - the parameter for rotation changes
            cipher_for_rotation = creates_rotation_hash(finds_final_rotation_b)
            @results << cipher_for_rotation[val]

        elsif index == 2

          # @results = phrase.each do |letter|

            #each time we go to a new letter - the parameter for rotation changes
            cipher_for_rotation = creates_rotation_hash(finds_final_rotation_c)
            @results << cipher_for_rotation[val]
        else

          # @results = phrase.each do |letter|

            #each time we go to a new letter - the parameter for rotation changes
            cipher_for_rotation = creates_rotation_hash(finds_final_rotation_d)

            @results << cipher_for_rotation[val]
        end
      end
      puts @results.join("")
    end
    @final_results.join("")






      # elsif index == 1
      #   results1 = phrase.map do |letter|
      #     #each time we go to a new letter - the parameter for rotation changes
      #     cipher_for_rotation = creates_rotation_hash(finds_final_rotation_b)
      #     cipher_for_rotation[letter]
      #   end

      # elsif index == 2
      #   results2 = phrase.map do |letter|
      #   #each time we go to a new letter - the parameter for rotation changes
      #     cipher_for_rotation = creates_rotation_hash(finds_final_rotation_c)
      #     cipher_for_rotation[letter]
      #   end


      # else
      #   results = phrase.map do |letter|
      #   #each time we go to a new letter - the parameter for rotation changes
      #     cipher_for_rotation = creates_rotation_hash(finds_final_rotation_d)
      #     cipher_for_rotation[letter]
      #   end



  end

  def creates_rotation_hash(number_of_rotations)
    rotated_characters = @cipher.rotate(number_of_rotations)
    Hash[@cipher.zip(rotated_characters)]
  end








  #Build Encryptor Method
  #Open file
  #Encrypt file
  #Write new encrypted file


end




input = Runner.new
puts input.encrypt_letter("hellhellhellshitshitshit").inspect