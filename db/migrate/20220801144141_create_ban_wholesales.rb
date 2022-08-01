class CreateBanWholesales < ActiveRecord::Migration[6.1]
  def change
    create_table :ban_wholesales do |t|
      t.references :wholesale, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
