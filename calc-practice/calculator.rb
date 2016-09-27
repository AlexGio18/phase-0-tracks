def calculate(n,op,i)
	if op == '+'
		return n + i
	end
	if op == '-'
		return n - i
	end
	if op == '*'
		return n * i
	end
	if op == '/'
		return n / i
	end
end

=begin
p calculate(4,'+', 5)
p calculate(4,'-', 5)
p calculate(4,'*',5)
p calculate(20,'/',5)
=end

puts "Welcome to calculate."

puts "Calculate ('done' to quit):"

# p problem
problem = ' '
array = []

until problem == ['done']

	if problem != ['done']
	problem = gets.chomp.split
	n = problem[0].to_i
	op = problem[1] 
	i = problem[2].to_i  
	
	puts calculate(n,op,i)

	array = []
	array << problem
	counter = 0
	
	while counter < array.length
		puts 
		puts "#{array[counter]}"
	counter += 1
	end

end
end
# getting stuck on question 5 - trying to keep all user data and store it in a hash or array
# and then print everything at the end.

