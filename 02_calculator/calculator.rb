#write your code here
def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(a)
  if a == [] then
    return 0
  end

  h = 0
  a.each { |i| 
    h+=i
  }

  return h
end