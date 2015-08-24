class AddSkillLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skill_level_id, :integer
  end
end
