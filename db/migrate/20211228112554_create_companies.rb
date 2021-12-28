class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.string :category, limit: 30
      t.date :founded
      t.float :funding_amount
      t.string :funding_unit, limit: 10

      t.timestamps
    end
  end
end
