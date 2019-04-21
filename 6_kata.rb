# Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.

def function(number)
    i = 1
    number.abs.times do
    print "#{i.to_s} sheep..."
    i += 1
    end
end 
function(1)



def count_sheep(num)
    (1..num).map {|i| "#{i} sheep..."}.join
end