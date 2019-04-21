def sqInRect(lng, wdth)
  if lng == wdth
    return nil
  end
  if lng > wdth
    square1 = wdth
  else
    square2 = lng
  end
  square2 = (lng - wdth).abs 
  square3 = 1
  array = [square1, square2, square3]
end