class AddUuidToPatentSearch < ActiveRecord::Migration
  def change
    add_column :patent_searches, :uuid, :string
  end
end
