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
