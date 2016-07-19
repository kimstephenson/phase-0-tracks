arr = [42, 89, 23, 1]

def search_array(arr, number)
  arr.each_with_index do |n, i|
    if n == number
      return i
    elsif !arr.include?(number)
      return nil
    end
  end
end

p search_array(arr, 8)
p search_array(arr, 23)

def fibonacci_adder(x)
  array = [0,1,1,2,3,5]
  if x >= 7
    (x-6).times do
      array << (array[-1] + array[-2])
    end
    p array
  else
    p array[0...x]
  end
  p array.last == 218922995834555169026
end

fibonacci_adder(100)
fibonacci_adder(4)

array = [4 ,32, 567, 1, -54]

#Bubble Sort
#Define a variable called "swapped", which is true if no swaps were made
#Repeatedly iterate through the array until no swaps need to be made
#If, after one iteration through the array no swaps have been made, the loop is complete

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      #If the preceding value is greater than the following value
      if array[i] > array [i+1]
        #Reverse the positions of the items in the array
        array[i], array[i+1] = array[i+1], array[i]
        #If this happens, swaps have been made so the loop cannot terminate
        swapped = true
      end
    end

    #If no values have been swapped in one iteration through, the loop can terminate
    break if !swapped
  end

  #Method's return value will be the swapped array
  array
end

p bubble_sort(array)