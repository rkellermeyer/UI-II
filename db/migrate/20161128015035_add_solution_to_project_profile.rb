class AddSolutionToProjectProfile < ActiveRecord::Migration
  def change
    add_column :project_profiles, :solution, :text
  end
end
