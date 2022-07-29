class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.references :additive, foreign_key: true
      t.references :allergy, foreign_key: true
      t.references :material_genre, foreign_key: true
      t.string :name, null: false
      t.string :distributor, null: false
      t.string :manufacturer, null: false
      t.string :country_of_origin, null: false
      t.string :packing, null: false
      t.string :preservation_method, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
