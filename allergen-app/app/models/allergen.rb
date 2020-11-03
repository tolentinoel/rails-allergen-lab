class Allergen < ApplicationRecord
    belongs_to :user
    belongs_to :ingredient

    validates :ingredient, uniqueness: {scope: :user}
end
