class AddComponentsToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :components, :text
  end
end
