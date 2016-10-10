class AddProblemToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :problem, :text
  end
end
