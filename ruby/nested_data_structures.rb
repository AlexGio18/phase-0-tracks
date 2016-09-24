#A_Really_Stocked_Refrigerator

refrigerator_unit = {
	fridge_body: {
		drawers:{
			meat_drawer: [
				'bacon',
				'salami',
				'sausage links',
				'sliced turkey',
				'chicken breast'
				],

			cheese_drawer:[
				'sliced swiss',
				'log of mozzarella',
				'shredded cheddar',
				'block of pepper jack'
				],

			vegetable_drawer:[
				'head of broccoli',
				'bag of mixed greens',
				'heart of romaine lettuce',
				'baby carrots',
				'bell peppers',
				'scallions',
				'celery stalks'
				],

			fruit_drawer:[
				'grapefruit',
				'grapefruit',
				'bag of lemons',
				'bag of clementines',
				],

		},

		shelves:{

			bottom_shelf: [
				'tupperware of grilled squashed',
				'jar of salsa',
				'sour cream',
				'tray of leftover lasagna',
				'large cucumber',
				'can of orange flavored pellegrino',
				'can of orange flavored pellegrino',
				'can of orange flavored pellegrino'
				],

			middle_shelf: [
				'mayonnaise',
				'garlic chili paste',
				'hummus',
				'tomato sauce',
				'mustard',
				'jar of pickles',
				'jar of roasted peppers'
				],

			top_shelf: [
				'jug of iced tea',
				'half and half',
				'milk',
				'orange juice',
				'homemade pesto',
				'maple syrup',
				'butter',
				'apricot jam',
				'strawberry jelly'
				]	
		}
	},

fridge_door: {
	bottom_shelf: [
		'vinaigrette dressing',
		'ranch dressing',
		'lemon juice',
		'ketchup',
		'mustard'
		
		],
	middle_shelf: [
		'worcestershire sauce',
		'bottle of selzter',
		'creamy italian dressing',
		'block of cream cheese',
		'butter'
		],
	top_shelf: [
		'eggs',
		'vitamins',
		]
	}
}

p refrigerator_unit[:fridge_door][:top_shelf]

p refrigerator_unit[:fridge_body][:drawers][:vegetable_drawer][3]

p refrigerator_unit[:fridge_body][:drawers][:meat_drawer][1].reverse

refrigerator_unit[:fridge_body][:shelves][:middle_shelf].push('jar of sundried tomatoes')

p refrigerator_unit[:fridge_body][:shelves][:middle_shelf]

p refrigerator_unit[:fridge_door][:top_shelf][0] = 'a dozen eggs'
