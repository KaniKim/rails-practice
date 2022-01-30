class CreateBonds < ActiveRecord::Migration[6.1]
  def change
    create_table :bonds do |t|
      t.bigint :user_id
      t.bigint :friend_id
      t.string :state

      t.timestamps
    end
    add_index :bonds, [:user_id, :friend_id], unique: true
    #Ex:- add_index("admin_users", "username")

  end
end
