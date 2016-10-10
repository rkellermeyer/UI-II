class AddImprovementDetailToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :improvement_detail, :text
  end
end
