#PSEUDOCODE + METHODS ----------------------------------------------------------->
#Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: ask user for input
  # split list into an array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

def create_grocerylist(food, grocery_list)
	food_list = food.split(' ')
	food_list.each do |grocery|
		grocery_list[grocery] = 1
	end  
	grocery_list
end

# Method to print a list and make it look pretty
# input: put the string that displays the key and value of each item
# steps: do for each item in the hash- display the item and then the value 
 #"grocery item (item) quantity (value)"
# output: output the string 

def print_grocery_list(grocery_list)
  	puts
  	puts "Current Grocery List:"
  	grocery_list.each do |grocery_name, quantity|
  		puts "#{grocery_name} qty: #{quantity}"
  end
  puts
 end

# Method to add an item to a list
# input: item name and optional quantity
# steps: item name is key and the optional quantity is the value
# output: additonal item and quantity added to list

def add_item_to_grocery_list(grocery_list, grocery_name, quantity)
	grocery_list[grocery_name] = quantity
	grocery_list
	end

# Method to remove an item from the list
# input: ask user for item name
# steps: delete key from hash
# output: drivercode shows that key is removed

def remove_item_grocery_list(grocery_list, grocery_name)
	if grocery_list.include?(grocery_name)
	grocery_list.delete(grocery_name)
	grocery_list
	else return false
	end
end

# Method to update the quantity of an item
# input: ask user to if they want to change the quantity, if they do
	# ask how much do they want to change by
# steps: change the value of key to new value
# output: new key value

def update_item_quantity(grocery_list, grocery_name, quantity)
	if grocery_list.include?(grocery_name)
	grocery_list[grocery_name] = quantity
	grocery_list
else return false
	end
end

grocery_list = {}

#DRIVER CODE ----------------------------------------------------------->

puts "Original List"
print_grocery_list(create_grocerylist("carrots apples cereal pizza", grocery_list))

puts "Added beans and quantity"
print_grocery_list(add_item_to_grocery_list(grocery_list, "beans","5" ))

add_item_to_grocery_list(grocery_list, "Lemonade", "2")
add_item_to_grocery_list(grocery_list, "Tomatoes", "3")
add_item_to_grocery_list(grocery_list, "Onions", "1")
add_item_to_grocery_list(grocery_list, "Ice Cream", "4")

puts "Added Items"
print_grocery_list(grocery_list)

puts "Removed Lemonade"
remove_item_grocery_list(grocery_list, "Lemonade")
print_grocery_list(grocery_list)

puts "Changed Ice Cream quantity to 1"
update_item_quantity(grocery_list, "Ice Cream", "1" )
print_grocery_list(grocery_list)

=begin
REFLECT ----------------------------------------------------------->

What did you learn about pseudocode from working on this challenge?
Pseudocoding is hard if you're not specific. It purpose is to help you understand what
you want to code, and how to get the most out of your code.

What are the tradeoffs of using arrays and hashes for this challenge?
Because the grocery list contains a key and value(name and quantity) It is best to use a hash.

What does a method return?
Methods in Ruby return an implicit return. Which means a method will always return the 
state of the last variable called.

What kind of things can you pass into methods as arguments?
Variables, strings, integers, floats, data structures, and other methods.

How can you pass information between methods?
By passing them as arguments for methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
It solidified my understanding of how hashes work a bit better. I'm still confused by syntax: when 
something should be used in a method or when to call the arguments passed when structuring a method.

=end
