class RecipeGenre < ApplicationRecord
  belongs_to :allergy
  belongs_to :recipe
end
