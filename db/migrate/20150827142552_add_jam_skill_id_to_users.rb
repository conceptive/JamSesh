class AddJamSkillIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :jam_skill_id, :integer
  end
end
