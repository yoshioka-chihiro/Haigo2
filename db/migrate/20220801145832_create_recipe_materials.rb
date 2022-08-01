class CreateRecipeMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_materials do |t|
      t.references :material, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.float :amount, null: false

      t.timestamps
    end
  end
end
