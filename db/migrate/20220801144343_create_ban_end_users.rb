class CreateBanEndUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :ban_end_users do |t|
      t.references :end_user, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
