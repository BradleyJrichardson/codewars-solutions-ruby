# Find the odd int

def find_it(seq)
  numberWithOddCount = 0
  seq.each do |currentElement|
    counter = 0
    seq.each { |elementToCompare| counter += 1 if currentElement == elementToCompare}
    numberWithOddCount = currentElement if counter % 2 != 0
  end
  numberWithOddCount
end

find_it([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5])


def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end