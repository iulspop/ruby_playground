# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

# Examples:

 # must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
 # must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

=begin
PROBLEM
input: object representing the recipe, object representing the quantity of ingredients
output: max number of cakes (int)

explicit requirements:
  1. ingredients that are not present in ingredients object are equal to 0.
  2. the max number of cakes is rounded down.
  
implicit requirements:
  1. Assume recipe ingredient always has non zero value

mental model of problem:
  for each quantity in recipe object, check corresponding ingredient in ingredients object,
  number of times ingredient in ingredients fits into the recipe quantity, append the result to an array, get minimum

EXEMPLES
  inputs: {},{}
  output: 0
  
  inputs: {},{flour: 1200}
  output: 0
  
  inputs: {flour: 200}, {}
  output: 0

  inputs: {flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}
  output: 2  
  
  inputs: {flour: 500, sugar: 0, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}
  output: 2
  
DATA STRUCTURES
input: recipe (object), ingredients (object)
output: integer

array intermediate for servings

ALGORITHM
1. Initialize empty array `servings`
2. Loop through each key and value (ingredient, quantity) in `recipe`
   1. Initialize variable `ingredient_amount` assign it to the result of the value of the key `ingredient` from `ingredients`
   2. Divide `amount` by `quantity` and append result to `servings`
3. Return minimum value of `servings`

=end

# IMPLEMENTATION
def cakes(recipe, ingredients)
  servings = []
  recipe.each do |ingredient, quantity|
    amount_on_hand = ingredients.fetch(ingredient, 0)
    servings.push(amount_on_hand / quantity)
  end
  return 0 if servings.empty?
  servings.min
end
  


p cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}) == 2
p cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}) == 0
p cakes({},{}) == 0