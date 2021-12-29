class CreateInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :interests do |t|
      t.string :side, limit: 5
      t.string :share_type, limit: 10
      t.integer :shares_min
      t.integer :shares_max
      t.float :price_per_share
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
