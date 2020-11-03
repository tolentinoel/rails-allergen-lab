class User < ApplicationRecord
    has_many :allergens
    has_many :ingredients, through: :allergens
    has_many :recipes, dependent: :destroy
end
