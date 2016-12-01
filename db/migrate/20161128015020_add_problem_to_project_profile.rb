class AddProblemToProjectProfile < ActiveRecord::Migration
  def change
    add_column :project_profiles, :problem, :text
  end
end
