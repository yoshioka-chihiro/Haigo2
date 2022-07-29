class MaterialAllergy < ApplicationRecord
  belongs_to :material_id
  belongs_to :allergy_id
end
