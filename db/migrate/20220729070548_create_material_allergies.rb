class CreateMaterialAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :material_allergies do |t|
      t.references :material, null: false, foreign_key: true
      t.references :allergy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
