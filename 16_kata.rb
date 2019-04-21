# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

def find_short(s)
  word = s.scan(/\b\w+\b/).min_by(&:length)
  l = word.size
end

def find_short(s)
  s.split.map(&:size).min
end

s = "bitcoin take over the world maybe who knows perhaps"
p find_short(s)

# Another way to solve this problem is to use array processors
def find_short(s)
  z = s.split(" ")
  l = []
  z.each do |x|
    l << x.length
  end
  l.sort!
  l[0]
end

# Other notes
# finding the longest word in a array and returning it
# a = %w(albatross dog horse)
# a.max_by {|x| x.length }   #=> "albatross"

# a = %w(albatross dog horse)
# a.min_by {|x| x.length }   #=> "dog"

# .split is a really helpful method for making arrays out of strings. just by putting the " " then you split all the words into elements
