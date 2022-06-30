class ChangeUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name
    rename_column :users, :email, :username
    add_index :users, :username, unique: true
  end
  
end
