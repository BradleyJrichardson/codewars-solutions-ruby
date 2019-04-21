# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

# Example:
# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!

def createPhoneNumber(numbers)
  first_bit = numbers[0..2]
  second_bit = numbers[3..5]
  last_bit = numbers[6..9]
  first_bit << ")"
  first_bit.unshift("(")
  second_bit << "-"
  second_bit.unshift (" ")
  phone_number = first_bit + second_bit + last_bit
  phone_number.join
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

p createPhoneNumber(numbers)

# arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

# def createPhoneNumber(digits)
#   area_code, prefix, *extension = digits.each_slice(3).map(&:join)
#   "(#{area_code}) #{prefix}-#{extension.join}"

# def createPhoneNumber(numbers)
#   n = numbers.join
#   "(#{n[0..2]}) #{n[3..5]}-#{n[6..9]}"
# end
