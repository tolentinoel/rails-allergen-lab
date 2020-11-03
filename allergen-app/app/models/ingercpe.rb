class Ingercpe < ApplicationRecord
    belongs_to :ingredient
    belongs_to :recipe

    validates :measurement, presence: true
end
