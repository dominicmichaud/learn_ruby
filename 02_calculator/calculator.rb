def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(x)
  x.inject(0){|sum,i| sum+i}
end

def multiply(x)
  x.inject(:*)
end


def power(x,y)
  x**y
end

def factorial(x)
  if x < 2
    1
  else
    z = []
    1.upto(x) do|i|
      z.push(i)
    end

    z.inject(:*)
  end
end