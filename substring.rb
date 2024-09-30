# Create a method called substring that takes two arguments, first one a string and second an array of words
def substrings(word, dictionary)
  # Convert the string (word) into a case insensitive
  lowercase_word = word.downcase

  # This variable stores resulting hash
  result = {}

  dictionary.each do |substring|
    lowercase_substring = substring.downcase # convert the substring into lower case
    count = lowercase_word.scan(lowercase_substring).length

    if count.positive?
      result[lowercase_substring] = count
    end
  end
  result
end

dictionary_of_words = %w[below down be go going horn how howdy it i low own part partner sit]

puts substrings("how partner, sit down! How's it going?", dictionary_of_words)