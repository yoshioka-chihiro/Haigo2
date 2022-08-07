class Additive < ApplicationRecord
  has_many :material_additives, dependent: :destroy
  has_many :materials, through: :material_additives
end
