# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains more than 3 numbers.

# The tests contain some very huge arrays, so think about performance.


find_uniq([1,1,1,1,0])

def find_uniq(arr)
  a = arr[0]
  a1 = []
  a2 = []
  arr.each do |x| 
    if x == a 
      a1 << x
    else
      a2 << x
    end
  end 

  if a1.length > a2.length
    return a2[0]
  else
    return a1[0]
  end 
end

##########################################################

def find_uniq(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

##########################################################

def find_uniq(arr)
  arr.sort!
  if arr[0] != arr[1]
    return arr[0]
  else
    return arr[-1]
  end
end