class AddOtherUsesToProjectProfiles < ActiveRecord::Migration
  def change
    add_column :project_profiles, :other_uses, :text
  end
end
