MORSE_CODE = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}

def decode_char(char)
  return MORSE_CODE[char]
end

def decode_word(word)
  characters = word.split(" ") # converting the word array of morse characters
  converted_word = "" # initialize an empty word
  # converting each code to letters and adding it to the converted_word string variable
  characters.each { |char| converted_word += decode_char(char) }
  return converted_word
end

def decode(code)
  if code.split(" ").length == 1
    decode_char(code)
  elsif code.split("  ").length == 1
    decode_word(code)
  else
    words = code.split("  ") # converting the message to array of morse words
    converted_message = "" # initialize an empty message
    # converting each morse code to words and adding them to the converted_message string variable
    words.each { |word| converted_message += decode_word(word) + " " }
    return converted_message
  end
end

message = decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
puts message
