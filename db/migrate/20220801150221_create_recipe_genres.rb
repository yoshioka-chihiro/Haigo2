class CreateRecipeGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_genres do |t|
      t.references :allergy, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
