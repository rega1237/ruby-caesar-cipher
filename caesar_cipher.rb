def caesar_cipher(string, key)
  cipher = ''
  string.each_char do |char|
    ord_value = char.ord 
    if ord_value.between?(65, 90)
      if ord_value + key > 90
        cipher += ((ord_value + key) - 26).chr
      else
        cipher += (ord_value + key).chr
      end
    elsif ord_value.between?(92, 122)
      if ord_value + key > 122
        cipher += (ord_value - 26).chr
      else
        cipher += (ord_value + key).chr
      end
    else
      cipher += ord_value.chr
    end
  end
  p cipher
end

caesar_cipher("What a string!", 5)