#Release 0
#write a method that takes an array of integers and an array to search for.
#return the index of the item
#return nil if integer is not present


def search_int(integer, array)
	counter = 0
	array.each do |arr|
		if arr == integer
			return counter
		else
			return nil

		end
			counter +=1
	end
end


puts "What is the number you're looking for?"
number = gets.chomp.to_i

array = [19,17,11,23,34,56,59,48,45,55]
p search_int(number, array)

#Release 1

def Fib(x)
  arr = [0, 1]
  counter = (x - 2)
  i = 0
  # go through method 'loop' until conditions are met so we can shovel into array
  while i < counter
    new_var = arr[-1] + arr[-2] # adds previous 2 numbers together and adds to array
    # use shovel to add numbers to array
    arr << new_var
    i += 1
  end
  return arr
end

p fib(6)

#using last we can apply to the method and make it == to the number and give a true/false statement
#without seeing the entire array.

	if fib(100).last == 218922995834555169026
		puts "True"
	else
		puts "False"
end

#Release 2
=begin
1. find the length of the array
2. create a loop that continues until all letters are sorted
=end

def bubble_sort(array)
  length = array.length
  loop do                # implement loop to go through array
    swapped = false      #setting variable to false to begin with since array is not yet sorted

    (length-1).times do |x|        # to iterate one less than length of array
      if array[x] > array[+1]       #comparing index value of current index to the one after
        array[x], array[x+1] = array[x+1], array[x]          # swap of index
        swapped = true
      end
    end

    break if not swapped       # ends method once complete
  end

  array
end


array = ['d','f','w','z','e','q','a']

p bubble_sort(array)
