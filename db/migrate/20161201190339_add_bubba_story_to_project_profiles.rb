class AddBubbaStoryToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :bubba_story, :text
  end
end
