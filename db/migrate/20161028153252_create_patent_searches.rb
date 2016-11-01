class CreatePatentSearches < ActiveRecord::Migration
  def change
    create_table :patent_searches do |t|
      t.string :terms
      t.string :fields
      t.integer :user_id
      t.integer :results_doc_id

      t.timestamps null: false
    end
  end
end
