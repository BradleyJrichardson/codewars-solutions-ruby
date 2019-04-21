# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

# Return your answer as a number.

def sum_mix(arr)
  arr.map! { |x| x.to_i }
  arr.sum
end

# ---------------------------------------------------------------------

def sum_mix(x)
  x.sum(&:to_i)
end

def sum_mix(x)
  x.map(&:to_i).inject(:+)
end

def sum_mix(x)
  x.reduce(0) { |sum, item| sum + item.to_i }
end
