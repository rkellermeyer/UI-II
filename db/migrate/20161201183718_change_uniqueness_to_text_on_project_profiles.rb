class ChangeUniquenessToTextOnProjectProfiles < ActiveRecord::Migration
  def change
    remove_column :project_profiles, :uniqueness
    add_column :project_profiles, :uniqueness, :text
  end
end
