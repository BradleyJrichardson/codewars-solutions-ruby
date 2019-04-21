# you get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# Note: if there is nothing to sum, the sum is default to 0.
array = [1,-4,7,12]

# def function (array)
#     array.each do |x|
#         i = 0
#         if x < 0 
#             array.delete_at(i)
#         end
#         i += 1
#     end 
#     return array.sum
# end
# p function(array)

# def function (array)
#     array.reject! { |x| x < 0 }
#     return array.sum
# end

# p function(array)


def function (array)
    array.delete_if { |x| x < 0 }
    return array.sum
end

p function(array)

