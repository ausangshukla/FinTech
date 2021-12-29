class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :name, limit: 100
      t.string :doc_type, limit: 20
      t.integer :owner_id
      t.string :owner_type, limit: 20

      t.timestamps
    end

    add_index :documents, [:owner_id, :owner_type]

  end
end
