class Wholesale < ApplicationRecord
  has_many :ban_wholesales, dependent: :destroy
  has_many :materials, through: :ban_wholesales
  has_many :recipes, dependent: :destroy
end
