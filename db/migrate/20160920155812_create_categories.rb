class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.integer :category_type_id
      t.string :uspto_code
      t.string :ipc_code
      t.string :cpc_code
      t.boolean :active
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
