def calculate(n,op,i)
	if op == '+'
		n + i

	elsif op =='-'
		n - i
	
	elsif op == '*'
		n * i
	
	elsif op == '/'
		n / i
	else
		puts "Invalid Input"
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
array = {}
counter = 0 

until problem == ['done']

	if problem != ['done']
	problem = gets.chomp.split
	n = problem[0].to_i
	op = problem[1] 
	i = problem[2].to_i 
	
	puts calculate(n,op,i)
	end


end
end
# getting stuck on question 5 - trying to keep all user data and store it in a hash or array
# and then print everything at the end.

