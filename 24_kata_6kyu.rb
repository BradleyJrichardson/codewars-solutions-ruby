# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.


# Examples:

# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spinWords( "This is a test") => returns "This is a test" 
# spinWords( "This is another test" )=> returns "This is rehtona test"


def spinWords(string)
  array = string.scan(/\w+/)
  array.each do |x|  
    if x.length >= 5
      x.reverse!
    end 
  end
  array.join(" ")
end
# spinWords("Hey fellow warriors")


# ------------------------------------------------


def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end


# ------------------------------------------------


def spinWords(string)
  tokens = string.split(' ')
  newTokens = []
  tokens.each do |token|
    if token.size >= 5
      token.reverse!
    end
    newTokens.push(token)
  end
  return newTokens.join(' ')
end