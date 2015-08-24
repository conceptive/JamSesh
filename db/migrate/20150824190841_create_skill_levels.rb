class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
