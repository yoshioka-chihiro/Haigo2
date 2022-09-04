class Recipe < ApplicationRecord
  belongs_to :end_user
  belongs_to :wholesale
  belongs_to :member
  belongs_to :recipe_genre
  has_many :recipe_materials, dependent: :destroy
  has_many :materials, through: :recipe_materials
end
