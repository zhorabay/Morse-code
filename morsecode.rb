# Method to decode a Morse code character
def decode_char(morse)
  morse_to_english = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_to_english[morse]
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split(' ').map { |morse_char| decode_char(morse_char) }.join('')
end

# Method to decode the entire message in Morse code
def decode(message)
  words = message.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

# Test the decoding
message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = decode(message)
puts decoded_message
