class RecipeGenre < ApplicationRecord
  belongs_to :allergy
  has_many :recipes, dependent: :destroy
end
