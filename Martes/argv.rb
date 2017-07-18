def vowel(str)
  ["a","e","i","o","u"].include?(str)
end

def translate_word(word)
  word.each do |char|
  find_vowel_index = char.chars.find_index{|x| vowel(x)}
  main_consonants = char[0..find_vowel_index-1]
  complete_word = char[find_vowel_index..-1]
  complete_word + main_consonants + 'ay'
end
end

def translate(sentence)
  words = sentence.split(" ")
  words.map{|w| translate_word(w) }.join(" ")
end

p translate_word(ARGV)

