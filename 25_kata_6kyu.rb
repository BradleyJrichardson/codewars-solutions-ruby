# Write a function that when given a number >= 0, returns an Array of ascending length subarrays.

# pyramid(0) => [ ]
# pyramid(1) => [  [1]  ]
# pyramid(2) => [  [1],  [1, 1]  ]
# pyramid(3) => [  [1],  [1, 1],  [1, 1, 1]  ]
# Note: the subarrays should be filled with 1s

def pyramid(numbers)
  array_of_arrays = []
  if numbers == 0 
    array_of_arrays
  end 
  n = 1
  numbers.times do
    array_of_arrays << Array.new(n){1}
    n += 1
  end 
  array_of_arrays
end

p pyramid(2)

# ----------------------------------------------------------

def pyramid(numbers)
  (1..numbers).map { |n| [1]*n }
end

# ----------------------------------------------------------

def pyramid(numbers)
  Array.new(numbers){ |n| Array.new(n + 1){ 1 } }
end

# ----------------------------------------------------------

def pyramid(n)
  res = []
  n.times { |i| res << Array.new(i + 1, 1) }
  res
end