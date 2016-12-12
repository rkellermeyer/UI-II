class AddPurposeApplicationToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :purpose_application, :text
  end
end
