def decode_char(char)
  morse_code = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
    'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..',
    'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...',
    't' => '-', 'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..',
    '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....',
    '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.'
  }
  morse_code.key(char)
end
# puts decode_char('-..')

def decode_word(char)
  word = ''
  char.split.each do |c|
    word += decode_char(c).to_s
  end
  word
end
# puts decode_word("-- ....")

def decode(str)
  decoded_msg = ''
  str.split('  ').each do |word|
    decoded_msg += "#{decode_word(word)} "
  end
  decoded_msg.upcase
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
