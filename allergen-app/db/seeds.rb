# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all


meals = ["Breakfast", "Lunch", "Dinner", "Appetizers", "Sweets"]

10.times do
    User.create(name: Faker::FunnyName.name)
end

10.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end

10.times do 
    Allergen.create(ingredient: Ingredient.all.sample, user: User.all.sample)
end

10.times do
    Recipe.create(name: Faker::Food.dish, meal_type: meals.sample, user: User.all.sample)
end

30.times do
    Ingercpe.create(ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Faker::Food.measurement)
end