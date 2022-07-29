class CreateAdditives < ActiveRecord::Migration[6.1]
  def change
    create_table :additives do |t|
      t.string :name, null: false
      t.integer :type, null: false

      t.timestamps
    end
  end
end
