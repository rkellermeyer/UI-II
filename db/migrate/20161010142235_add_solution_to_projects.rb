class AddSolutionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :solution, :text
  end
end
