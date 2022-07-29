class CreateMaterialAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :material_allergies do |t|
      t.references :material_id, null: false, foreign_key: true
      t.references :allergy_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
