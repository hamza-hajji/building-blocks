def substrings str, dict
  str = str.downcase
  array = str.split(" ")
  result = Hash.new 0
  dict.each do |word|
    array.each do |str_word|
      if str_word.index(word.downcase) != nil
        result[word] += 1
      end
    end
  end

  return result
end