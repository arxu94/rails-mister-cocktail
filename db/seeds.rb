# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_list = open(url).read
# p html_file
ingredient = JSON.parse(ingredient_list)
ingredients_array = ingredient["drinks"]

ingredients_array.each do |name|
ingredient_name = name['strIngredient1']
i = Ingredient.create!(name: ingredient_name)
puts "Added #{i.name}!"
end
