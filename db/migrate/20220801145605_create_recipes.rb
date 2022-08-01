class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.references :end_user, null: false, foreign_key: true
      t.references :wholesale, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.string :for_use, null: false
      t.float :manufacturing_cost, null: false
      t.float :material_cost, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
