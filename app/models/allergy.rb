class Allergy < ApplicationRecord
  has_many :material_allergies, dependent: :destroy
  has_many :materials, through: :material_allergies
  belongs_to :recipe_genre
end
