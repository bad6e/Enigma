class Cipher

  def cipher
    lower_case = ("a".."z").to_a
    numbers = (0..9).to_a
    extra_characters = [" ",".",","]
    lower_case.concat(numbers).concat(extra_characters)
  end
end
