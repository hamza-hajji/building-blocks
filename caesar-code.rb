def caesar_cypher(str, key)
  str.split("").each do |letter|
    if letter.index(/[a-zA-Z]/) != nil # if it's a letter replace it
      # checking if lowercase
      overflow = letter.downcase == letter ? letter.ord + key > 122 : letter.ord + key > 90
      #replacing the letter accordingly
      str[letter] = overflow ? (letter.ord + key - 26).chr : (letter.ord + key).chr
    else # keep the letter if it's another symbol
      str[letter] = letter
    end
  end.join("")
  return str
end