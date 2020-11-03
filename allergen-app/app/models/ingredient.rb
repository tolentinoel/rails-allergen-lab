class Ingredient < ApplicationRecord
    has_many :ingercpe
    has_many :recipes, through: :ingercpe
    has_many :allergens, dependent: :destroy
    has_many :users, through: :allergens
end
