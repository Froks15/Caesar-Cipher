def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] = string.downcase.scan(/#{word}/).count if string.downcase.include?(word)
  end
end
