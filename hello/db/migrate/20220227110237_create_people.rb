class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :age
      t.text :mail

      t.timestamps
    end
  end
end
