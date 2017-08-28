# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Crepes

Product.create(name: "Buckeye Crepes", price: 9.5, short_description: "Three delicate crepes filled with Nutella®, topped with toasted hazelnuts, Hershey’s® syrup and lightly dusted with powdered sugar.", long_description: "Three delicate crepes filled with Nutella®, topped with toasted hazelnuts, Hershey’s® syrup and lightly dusted with powdered sugar.", in_store_item: true, online_order_item: true, product_type: "crepes", active: true)
Product.create(name: "Cherry Kijafa Crepes", price: 9.95, short_description: "A Danish favorite! Three delicate crepes filled and topped with Montmorencey cherries simmered in our Kijafa® wine sauce. Topped with a light dusting of powdered sugar.", long_description: "A Danish favorite! Three delicate crepes filled and topped with Montmorencey cherries simmered in our Kijafa® wine sauce. Topped with a light dusting of powdered sugar.", in_store_item: true, online_order_item: true, product_type: "crepes", active: true)
Product.create(name: "Continental Crepes", price: 9.50, short_description: "Three delicates crepes rolled with our sour cream tempered Triple Sec and lightly dusted with powdered sugar. Served with hot tropical syrup.", long_description: "Three delicates crepes rolled with our sour cream tempered Triple Sec and lightly dusted with powdered sugar. Served with hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "crepes", active: true)
Product.create(name: "Fresh Fruit Crepes", price: 10.95, short_description: "Our tender crepes filled and topped with fresh seasonal berries, lightly dusted with powdered sugar. Topped with pure whipping cream made fresh with Supreme Pure Vanilla from Lyons®.", long_description: "Our tender crepes filled and topped with fresh seasonal berries, lightly dusted with powdered sugar. Topped with pure whipping cream made fresh with Supreme Pure Vanilla from Lyons®.", in_store_item: true, online_order_item: true, product_type: "crepes", active: true)
Product.create(name: "French Crepes", price: 9.75, short_description: "Three delicate crepes filled with strawberry preserves, topped with hot tropical syrup and lightly dusted with powdered sugar.", long_description: "Three delicate crepes filled with strawberry preserves, topped with hot tropical syrup and lightly dusted with powdered sugar.", in_store_item: true, online_order_item: true, product_type: "crepes", active: true)

# Specialties

Product.create(name: "Dutch Baby", price: 10.75, short_description: "Oven baked served with fresh lemons, whipped butter and powdered sugar.", long_description: "Oven baked served with fresh lemons, whipped butter and powdered sugar.", in_store_item: true, online_order_item: true, product_type: "specialties", active: true)
Product.create(name: "Apple Pancake", price: 11.25, short_description: "Oven baked with fresh Granny Smith apples and Sinkiang cinnamon glaze.", long_description: "Oven baked with fresh Granny Smith apples and Sinkiang cinnamon glaze.", in_store_item: true, online_order_item: true, product_type: "specialties", active: true)

# Pancakes

Product.create(name: "Buttermilk Pancakes", price: 7.25, short_description: "Served with whipped butter.", long_description: "Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Chocolate Chip Pancakes", price: 8.25, short_description: "Buttermilk pancakes filled and topped with mini chocolate chips. Dusted with powdered sugar and served with pure whipped cream made fresh with Supreme Pure Vanilla from Lyons®.", long_description: "Buttermilk pancakes filled and topped with mini chocolate chips. Dusted with powdered sugar and served with pure whipped cream made fresh with Supreme Pure Vanilla from Lyons®.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Georgia Pecan Pancakes", price: 8.75, short_description: "Filled and topped with hot toasted pecans. Dusted with powdered sugar and served with whipped butter and hot tropical syrup.", long_description: "Filled and topped with hot toasted pecans. Dusted with powdered sugar and served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Blueberry Pancakes", price: 8.50, short_description: "Pancakes filled with blueberries and dusted with powdered sugar. Served with whipped butter and blueberry compote.", long_description: "Pancakes filled with blueberries and dusted with powdered sugar. Served with whipped butter and blueberry compote.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Banana Pancakes", price: 7.95, short_description: "Pancakes filled with diced bananas and dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", long_description: "Pancakes filled with diced bananas and dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Potato Pancakes", price: 8.95, short_description: "Served with sour cream and cinnamon applesauce.", long_description: "Served with sour cream and cinnamon applesauce.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Swedish Pancakes", price: 8.95, short_description: "Authentic lacy Swedish pancakes served with lingonberries from Sweden.", long_description: "Authentic lacy Swedish pancakes served with lingonberries from Sweden.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Sourdough Pancakes", price: 8.95, short_description: "The favorite of the Klondike gold rush! Served with whipped butter.", long_description: "The favorite of the Klondike gold rush! Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Bacon Pancakes", price: 8.50, short_description: "Pancakes with real bits of our hickory bacon. Served with whipped butter.", long_description: "Pancakes with real bits of our hickory bacon. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "49er Flapjacks", price: 8.75, short_description: "From the Mother Lode country. Plate sized, chewy tender flapjacks served with whipped butter.", long_description: "From the Mother Lode country. Plate sized, chewy tender flapjacks served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Dollar Pancakes", price: 7.50, short_description: "Twelve delicious silver dollar pancakes. Served with whipped butter.", long_description: "Twelve delicious silver dollar pancakes. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Buckwheat Pancakes", price: 7.95, short_description: "Served with whipped butter.", long_description: "Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Coconut Pancakes", price: 8.50, short_description: "Filled and topped with toasted coconut. Dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", long_description: "Filled and topped with toasted coconut. Dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "2 x 4", price: 8.95, short_description: "Four buttermilk pancakes and two eggs, any style. Served with whipped butter.", long_description: "Four buttermilk pancakes and two eggs, any style. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Three Little Pigs in a Blanket", price: 8.50, short_description: "Our special link sausages wrapped in light buttermilk pancakes and dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", long_description: "Our special link sausages wrapped in light buttermilk pancakes and dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)
Product.create(name: "Sourdough French Toast", price: 8.25, short_description: "Golden brown, light and fluffy. Dusted with powdered sugar. Served with whipped butter and preserves.", long_description: "Golden brown, light and fluffy. Dusted with powdered sugar. Served with whipped butter and preserves.", in_store_item: true, online_order_item: true, product_type: "pancakes", active: true)

# Omelettes

Product.create(name: "Cheese Omelette", price: 10.25, short_description: "Our fluffy omelette filled with aged cheddar cheese.", long_description: "Our fluffy omelette filled with aged cheddar cheese.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)
Product.create(name: "Fresh Veggies Omelette", price: 12.50, short_description: "Our fluffy omelette filled with fresh broccoli, fresh tomatoes, fresh mushrooms and aged cheddar cheese.", long_description: "Our fluffy omelette filled with fresh broccoli, fresh tomatoes, fresh mushrooms and aged cheddar cheese.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)
Product.create(name: "Bacon and White Cheddar Cheese Omelette", price: 11.50, short_description: "Our fluffy omelette filled with thick sliced bacon and extra sharp aged white cheddar cheese.", long_description: "Our fluffy omelette filled with thick sliced bacon and extra sharp aged white cheddar cheese.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)
Product.create(name: "Ham and Cheese Omelette", price: 11.50, short_description: "Our fluffy omelette filled with diced sugar cured hickory smoked ham and aged cheddar cheese.", long_description: "Our fluffy omelette filled with diced sugar cured hickory smoked ham and aged cheddar cheese.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)
Product.create(name: "Irish Omelette", price: 12.75, short_description: "Our fluffy omelette filled with our homemade hash, a blend of kosher corned beef, potatoes, onions, and aged cheddar cheese.", long_description: "Our fluffy omelette filled with our homemade hash, a blend of kosher corned beef, potatoes, onions, and aged cheddar cheese.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)
Product.create(name: "Mushroom Omelette", price: 11.75, short_description: "Our fluffy omelette filled with fresh mushrooms and topped with a rich mushroom sherry sauce.", long_description: "Our fluffy omelette filled with fresh mushrooms and topped with a rich mushroom sherry sauce.", in_store_item: true, online_order_item: true, product_type: "omelettes", active: true)

# Waffles
Product.create(name: "Plain Waffle", price: 7.50, short_description: "Our golden brown waffle, lightly dusted with powdered sugar. Served with whipped butter.", long_description: "Our golden brown waffle, lightly dusted with powdered sugar. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Pecan Waffle", price: 8.95, short_description: "Our golden brown waffle, filled and topped with fresh toasted pecans, dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", long_description: "Our golden brown waffle, filled and topped with fresh toasted pecans, dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Fresh Fruit Waffle", price: 10.95, short_description: "Our golden brown waffle, lightly dusted with powdered sugar then topped with fresh berries of the season and pure whipped cream made fresh with Supreme Pure Vanilla from Lyons®.", long_description: "Our golden brown waffle, lightly dusted with powdered sugar then topped with fresh berries of the season and pure whipped cream made fresh with Supreme Pure Vanilla from Lyons®.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Apple Waffle", price: 8.95, short_description: "Our golden brown waffle, filled with Granny Smith apples topped with pure Sinkiang cinnamon sugar. Served with whipped butter and hot homemade apple syrup.", long_description: "Our golden brown waffle, filled with Granny Smith apples topped with pure Sinkiang cinnamon sugar. Served with whipped butter and hot homemade apple syrup.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Blueberry Waffle", price: 7.95, short_description: "Our golden brown waffle, filled with delicious blueberries and lightly dusted with powdered sugar. Served with whipped butter and warm blueberry compote.", long_description: "Our golden brown waffle, filled with delicious blueberries and lightly dusted with powdered sugar. Served with whipped butter and warm blueberry compote.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Bacon Waffle", price: 9.25, short_description: "Our golden brown waffle, baked with real bits of bacon. Served with whipped butter.", long_description: "Our golden brown waffle, baked with real bits of bacon. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Michelle's Waffle Dream", price: 13.95, short_description: "Our golden brown waffle, lightly dusted with powdered sugar. Served with whipped butter and warm syrup plus two eggs, any style and two pieces of Daily’s® bacon. Waffle upgrade available for 1.50.", long_description: "Our golden brown waffle, lightly dusted with powdered sugar. Served with whipped butter and warm syrup plus two eggs, any style and two pieces of Daily’s® bacon. Waffle upgrade available for 1.50.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)
Product.create(name: "Coconut Waffle", price: 7.95, short_description: "Our golden brown waffle, filled and topped with toasted coconut and lightly dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", long_description: "Our golden brown waffle, filled and topped with toasted coconut and lightly dusted with powdered sugar. Served with whipped butter and hot tropical syrup.", in_store_item: true, online_order_item: true, product_type: "waffles", active: true)

# Kids

Product.create(name: "Golden Bear’s Breakfaste", price: 7.95, short_description: "Three buttermilk pancakes with your choice of two strips of bacon, two link sausages, one patty sausage or one egg any style. Served with whipped butter.", long_description: "Three buttermilk pancakes with your choice of two strips of bacon, two link sausages, one patty sausage or one egg any style. Served with whipped butter.", in_store_item: true, online_order_item: true, product_type: "kids", active: true)
Product.create(name: "Dollar Pancakes", price: 4.75, short_description: "Six dollar-sized pancakes.", long_description: "Six dollar-sized pancakes.", in_store_item: true, online_order_item: true, product_type: "kids", active: true)
Product.create(name: "Dollar Chocolate Chip Pancakess", price: 5.50, short_description: "Six dollar-sized chocolate chip pancakes.", long_description: "Six dollar-sized chocolate chip pancakes.", in_store_item: true, online_order_item: true, product_type: "kids", active: true)
Product.create(name: "Jones Pigs in a Blanket", price: 5.75, short_description: "Two delicious buttermilk pancakes and link sausages.", long_description: "Two delicious buttermilk pancakes and link sausages.", in_store_item: true, online_order_item: true, product_type: "kids", active: true)

# Egg Specialties

Product.create(name: "Corned Beef Hash", price: 10.95, short_description: "Our homemade hash, a blend of kosher corned beef, potatoes, and onions. Served with two eggs, any style and five potato pancakes.", long_description: "Our homemade hash, a blend of kosher corned beef, potatoes, and onions. Served with two eggs, any style and five potato pancakes.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Bacon and Eggs", price: 9.95, short_description: "Four thick slices of hickory smoked bacon and two large fresh eggs, any style.", long_description: "Four thick slices of hickory smoked bacon and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Sausage and Eggs", price: 9.25, short_description: "Our special recipe patty sausage and two large fresh eggs, any style.", long_description: "Our special recipe patty sausage and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Links and Eggs", price: 9.95, short_description: "Our special recipe link sausage and two large fresh eggs, any style.", long_description: "Our special recipe link sausage and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Canadian Bacon and Eggs", price: 9.95, short_description: "Four thick slices of sugar cured, hickory smoked Canadian bacon and two large fresh eggs, any style.", long_description: "Four thick slices of sugar cured, hickory smoked Canadian bacon and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Ham and Eggs", price: 9.95, short_description: "A thick slice of sugar cured, hickory smoked ham and two large fresh eggs, any style.", long_description: "A thick slice of sugar cured, hickory smoked ham and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Minced Ham and Scrambled Eggs", price: 9.95, short_description: "Three eggs lightly scrambled with diced sugar cured, hickory smoked ham.", long_description: "Three eggs lightly scrambled with diced sugar cured, hickory smoked ham.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)
Product.create(name: "Hash Browns and Eggs", price: 9.50, short_description: "Hash browns and two large fresh eggs, any style.", long_description: "Hash browns and two large fresh eggs, any style.", in_store_item: true, online_order_item: true, product_type: "egg_specialties", active: true)


# Users
 # user = User.create(first_name: "Jason", last_name: "Amerine", email: "amerine.19@gmail.com", password: "TheBestPassword", password_confirmation: "TheBestPassword", role: 0)
