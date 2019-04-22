# Sum Array
# Write a method sum (sum_array in python, SumArray in C#) that takes an array of numbers and returns the sum of the numbers. These may be integers or decimals for Ruby and any instance of Num for Haskell. The numbers can also be negative. If the array does not contain any numbers then you should return 0.

# Examples
# numbers = [1, 5.2, 4, 0, -1]
# puts sum(numbers)
# 9.2

def sum(numbers)
  numbers.sum
end
# the sum method was an easy way to solve this problem with a built in ruby method. 



def sum(numbers)
  numbers.reduce(:+) 
end

# find the longest word
longest = %w{ cat sheep bear }.inject do |memo,word|
  memo.length > word.length ? memo : word
end

