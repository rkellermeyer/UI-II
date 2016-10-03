class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.integer :user_id
      t.boolean :approved
      t.boolean :in_review
      t.integer :category_id
      t.integer :specialty_id
      t.string :uuid

      t.timestamps null: false
    end
  end
end
