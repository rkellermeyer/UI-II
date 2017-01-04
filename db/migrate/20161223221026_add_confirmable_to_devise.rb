class AddConfirmableToDevise < ActiveRecord::Migration
  def up
    add_column :members, :unconfirmed_email, :string
    add_column :members, :confirmation_token, :string
    add_column :members, :confirmed_at, :datetime
    add_column :members, :confirmation_sent_at, :datetime
    add_index :members, :confirmation_token, unique: true
    execute('UPDATE members SET confirmed_at = NOW()')
  end

  def down
    remove_columns :members, :unconfirmed_email, :confirmation_token,
                             :confirmed_at, :confirmation_sent_at
  end
end
