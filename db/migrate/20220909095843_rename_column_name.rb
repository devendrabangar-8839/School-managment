class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :password, :password_digest
    rename_column :users, :email_id, :email
  end
end
