class AddDependenciesToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :dependencies, :text
  end
end
