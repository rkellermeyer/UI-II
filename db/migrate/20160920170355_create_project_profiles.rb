class CreateProjectProfiles < ActiveRecord::Migration
  def change
    create_table :project_profiles do |t|
      t.integer :reasons
      t.boolean :disclosure_flag
      t.integer :number_of_inventors
      t.boolean :multi_creator
      t.text :purpose
      t.text :improvement_1
      t.text :improvement_2
      t.text :gaps
      t.text :improve_gaps
      t.string :profile_steps_doc_id
      t.string :component_relationships_doc_id
      t.string :project_requirements_doc_id
      t.string :working_detail_doc_id
      t.text :how_to
      t.text :necessities_options
      t.text :statement_of_use
      t.string :bubba_story_doc_id
      t.boolean :active
      t.string :upid
      t.string :idyuh_id
      t.integer :project_id
      t.integer :member_id

      t.timestamps null: false
    end
    add_index :project_profiles, :multi_creator
    add_index :project_profiles, :profile_steps_doc_id
    add_index :project_profiles, :component_relationships_doc_id
    add_index :project_profiles, :project_requirements_doc_id
    add_index :project_profiles, :working_detail_doc_id
    add_index :project_profiles, :bubba_story_doc_id
    add_index :project_profiles, :project_id
    add_index :project_profiles, :member_id
  end
end
