

def find_2nd_largest(arr)
  arr.sort.reverse!
  arr[1]
end

find_2nd_largest([1, 2, 3])
