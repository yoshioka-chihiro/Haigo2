class Material < ApplicationRecord
  
  has_many :ban_wholesales, dependent: :destroy
  has_many :wholesales, thorough: :ban_wholesales
  
  has_many :ban_end_users, dependent: :destroy
  has_many :end_users, thorough: :ban_end_users
  
  has_many :recipe_materials, dependent: :destroy
  has_many :recipes, thorough: :recipe_materials
  
  has_many :nutritional_components, dependent: :destroy
  
  has_many :material_additives, dependent: :destroy
  has_many :additives, thorough: :material_additives
  
  has_many :material_allergies, dependent: :destroy
  has_many :allergies, thorough: :material_allergies
  
  belongs_to :material_genre
  
  
end
