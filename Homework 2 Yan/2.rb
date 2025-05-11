def pig_latin_word(word)
  match = word.match(/^(\w+)(\W*)$/)
  return word unless match 

  core_word, punctuation = match[1], match[2]

  if core_word.length == 1
    pig_word = core_word + "ay"
  else
    pig_word = core_word[1..-1] + core_word[0] + "ay"
  end

  pig_word + punctuation
end

def sentence_to_pig_latin(sentence)
  words = sentence.split(/\s+/)
  pig_latin_words = words.map { |word| pig_latin_word(word) }
  pig_latin_words.join(" ")
end

# Тестові приклади
sentences = [
  "Hello world",
  "I love Ruby programming!",
  "This is a test sentence.",
  "Wow! Such code, much fun."
]

sentences.each do |sentence|
  puts "Original: #{sentence}"
  puts "Pig Latin: #{sentence_to_pig_latin(sentence)}"
  puts "-" * 40
end
