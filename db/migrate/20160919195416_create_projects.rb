class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_type_id
      t.string  :title
      t.integer :category_id
      t.integer :member_id
      t.boolean :active
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
