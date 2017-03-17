# `add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `sum` takes an *array* of parameters and adds them all together
def add(num1,num2)
  num1+num2
end
def subtract(num1,num2)
  num1-num2
end
def sum(nums=[])
  total=0
  nums.each{|i| total+=i}
  return total
end
