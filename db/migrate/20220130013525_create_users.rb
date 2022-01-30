class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :usernmae
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_public

      t.timestamps
    end
    add_index :users, :usernmae, unique: true
    add_index :users, :email, unique: true
  end
end
