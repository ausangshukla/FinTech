class AddLogoToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :logo_url, :text
  end
end
