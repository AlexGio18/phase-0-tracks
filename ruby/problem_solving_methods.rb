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

def fib(x)
	counter = (x - 2)
	counter.times.each_with_object([0,1]) do |num,obj| obj << obj [-2] + obj[-1]
	end
end

p fib(6)

	if fib(100).last == 218922995834555169026
		puts "True"
	else
		puts "False"
end

