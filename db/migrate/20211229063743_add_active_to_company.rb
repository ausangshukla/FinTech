class AddActiveToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :active, :boolean, default: true
    add_column :users, :active, :boolean, default: true
    add_column :interests, :active, :boolean, default: true
  end
end
