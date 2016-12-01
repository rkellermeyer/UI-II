class AddExtraFieldsToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :filing_purpose, :string
    add_column :project_profiles, :inventor_count, :integer
    add_column :project_profiles, :government_sanctioned, :boolean
    add_column :project_profiles, :domain, :string
    add_column :project_profiles, :search_results_ref_id, :integer
    add_column :project_profiles, :solution_detail, :text
    add_column :project_profiles, :uniqueness, :string
  end
end
