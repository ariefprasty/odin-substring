def substrings(sentence, dictionary)
  result = Hash.new(0)
  clean_sentence = sentence.downcase.gsub(/[^a-z\s]/i, '')

  dictionary.each do |substring|
    clean_substring = substring.downcase.gsub(/[^a-z\s]/i, '')
    count = clean_sentence.scan(clean_substring).count
    result[clean_substring] = count if count > 0
  end
  
  result
end

# Example usage
sentence = "Hello there, below the low hills."
dictionary = ["he", "low", "below", "el", "lo", "ow", "the", "re"]
puts substrings(sentence, dictionary)
