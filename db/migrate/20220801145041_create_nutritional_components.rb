class CreateNutritionalComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :nutritional_components do |t|
      t.string :name, null: false
      t.float :amount, null: false
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
