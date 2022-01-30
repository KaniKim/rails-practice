class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :locale
      t.string :name
      t.string :place_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
