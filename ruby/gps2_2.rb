def create_grocerylist(food, grocery_list)
	food_list = food.split(' ')
	food_list.each do |item|
		grocery_list[item] = 1
	end  
	grocery_list
end

# puts "What items do you want to add to your list?"
# food = gets.chomp
grocery_list = {}
p create_grocerylist("carrots apples cereal pizza", grocery_list)


# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: ask user for input
  # split list into an array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

def add_item_to_grocery_list(grocery_list, grocery_name, quantity)
	grocery_list[grocery_name] = quantity
	grocery_list
	end

p add_item_to_grocery_list(grocery_list,"beans","5")
# Method to add an item to a list
# input: item name and optional quantity
# steps: item name is key and the optional quantity is the value
# output: additonal item and quantity added to list

# Method to remove an item from the list
# input: ask user for item name
# steps: delete key from hash
# output: drivercode shows that key is removed

# Method to update the quantity of an item
# input: ask user to if they want to change the quantity, if they do
	# ask how much do they want to change by
# steps: change the value of key to new value
# output: new key value

# Method to print a list and make it look pretty
# input: put the string that displays the key and value of each item
# steps: do for each item in the hash- display the item and then the value 
 #"grocery item (item) quantity (value)"
# output: output the string 