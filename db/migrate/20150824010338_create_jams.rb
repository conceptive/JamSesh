class CreateJams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.string :title
      t.string :location
      t.string :date
      t.string :time
      t.integer :number_of_musicians
      t.string :instrument_types

      t.timestamps null: false
    end
  end
end
