class RenamePasswordToHashedPassword < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :password, :hashed_password
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
