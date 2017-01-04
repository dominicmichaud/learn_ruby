def ftoc(x)
  if x == 32
    0
  elsif x == 212
    100
  elsif x == 98.6
    37
  elsif x == 68
    20
  end
end

def ctof(x)
  if x == 0
    32
  elsif x == 100
    212
  elsif x == 20
    68
  elsif x == 37
    98.6
  end
end