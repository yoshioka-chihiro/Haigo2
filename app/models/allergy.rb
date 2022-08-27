class Allergy < ApplicationRecord
  has_many :material_allergies, dependent: :destroy
  has_many :materials, through: :material_allergies
  has_many :recipe_genres, dependent: :destroy
end
