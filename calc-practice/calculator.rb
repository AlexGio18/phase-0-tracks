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
puts "How many times would you like to calculate?"
num_times = gets.chomp.to_i

puts "Calculate ('done' to quit):"


problem = ' '

# p problem


until problem == ['done']
	
	problem = gets.chomp.split
	n = problem[0].to_i
	op = problem[1] 
	i = problem[2].to_i  

	array = []
	array << problem

	puts calculate(n,op,i)
	
	p array
end
# getting stuck on question 5 - trying to keep all user data and store it in a hash or array
# and then print everything at the end.

