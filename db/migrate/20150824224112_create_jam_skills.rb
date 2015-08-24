class CreateJamSkills < ActiveRecord::Migration
  def change
    create_table :jam_skills do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
