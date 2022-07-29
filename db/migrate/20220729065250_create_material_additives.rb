class CreateMaterialAdditives < ActiveRecord::Migration[6.1]
  def change
    create_table :material_additives do |t|
      t.references :material, null: false, foreign_key: true
      t.references :additive, null: false, foreign_key: true

      t.timestamps
    end
  end
end
