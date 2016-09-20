class ChangeColumnEmailToUniqueOnContactRequests < ActiveRecord::Migration
  def change
    change_column :contact_requests, :email, :string, null: false
    add_index :contact_requests, :email, unique: true
  end
end
