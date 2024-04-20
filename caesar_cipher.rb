def caesar_cipher(text, character_shift)
  formatted_text = ''
  text.split('').map do |char|
    base = char.ord < 91 ? 65 : 97
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      rotation = (((char.ord - base) + character_shift) % 26) + base
      formatted_text << rotation.chr
    else
      formatted_text << char
    end
  end
  formatted_text
end
