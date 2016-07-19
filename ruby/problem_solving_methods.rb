arr = [42, 89, 23, 1]

def search_array(arr, number)
  arr.index(number)
end

p search_array(arr, 32)
p search_array(arr, 1)

def fibonacci_adder(x)
  array = [0,1,1,2,3,5]
  if x >= 7
    (x-6).times do
      array << (array[-1] + array[-2])
      p array
    end
  else
    p array[0...x]
  end
end

fibonacci_adder(100)