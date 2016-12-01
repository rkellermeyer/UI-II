class AddImprovementDetailToProjectProfile < ActiveRecord::Migration
  def change
    add_column :project_profiles, :improvement_detail, :text
  end
end
