class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :birthdat
      t.text :bio
      t.string :color
      t.string :twitter

      t.timestamps
    end
  end
end
