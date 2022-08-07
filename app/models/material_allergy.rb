class MaterialAllergy < ApplicationRecord
  belongs_to :material
  belongs_to :allergy
end
