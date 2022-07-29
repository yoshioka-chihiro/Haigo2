class CreateMaterialGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :material_genres do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
