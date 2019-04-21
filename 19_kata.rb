# Complete the function which takes two arguments and returns all numbers which are divisible by given divisor. First argument is an array of numbers and the second is the divisor.

# Example
# divisible_by([1, 2, 3, 4, 5, 6], 2)

def divisible_by(numbers, divisor)
  arr = []
  numbers.each do |x|
    if (x % divisor) == 0
      x >> arr
    end
  end 
  return arr
end

divisible_by([1, 2, 3, 4, 5, 6], 2)


def divisible_by(numbers, divisor)
  numbers.select{ |n| n % divisor == 0 }
end

def divisible_by(numbers, divisor)
  numbers.select { |number| number.modulo(divisor).zero? }
end


# if returning something from an array a good way in ruby to acheive such things is to use the select method