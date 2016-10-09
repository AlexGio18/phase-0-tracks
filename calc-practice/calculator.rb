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
counter = 0

array_calc = []

while true
	problem = gets.chomp
	
	if problem == "done"
		break

	else 
		problem_array = problem.split
		n = problem_array[0].to_i
		op = problem_array[1] 
		i = problem_array[2].to_i
		puts calculate(n,op,i)
		
	end
		counter += 1 
		calculation = calculate(n,op,i)
		problem_array << calculation
		hash_calc = {counter => problem_array}
		array_calc << hash_calc
end

array_calc.each_index do |i|
	array_calc[i].each do |key, value|
 	puts "Calculation #{key}: #{value[0]} #{value[1]} #{value[2]} = #{value[3]}"
 end
end

# 	array = []
# 	array << problem << "=" <<  
# 	counter = 0
	
# 	while counter < array.length
# 		puts 
# 		puts "#{array[counter]}"
# 	counter += 1

# end
# getting stuck on question 5 - trying to keep all user data and store it in a hash or array
# and then print everything at the end.

