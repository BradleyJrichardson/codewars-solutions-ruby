# Very simple, given a number, find its opposite.

# Examples:

# 1: -1
# 14: -14
# -34: 34

def opposite(num)
  if num < 0
    return num.abs
  else num >= 0
    return num * -1   end
end

# def opposite n
#   -n
# end

# def opposite(value)
#   value * -1
#  end
