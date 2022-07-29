class CreateAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :allergies do |t|
      t.string :name, null: false
      t.boolean :is_specific, null: false

      t.timestamps
    end
  end
end
