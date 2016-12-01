class AddStepToProjectProfile < ActiveRecord::Migration
  def change
    add_column :project_profiles, :step, :integer
  end
end
