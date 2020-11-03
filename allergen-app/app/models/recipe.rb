class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingercpe, dependent: :destroy
    has_many :ingredients, through: :ingercpe

    validates :name, presence: true
    validates :meal_type, inclusion: {in: %w(Breakfast Lunch Dinner Appetizers Sweets)}
end
