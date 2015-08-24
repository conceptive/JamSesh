class AddJamSkillIdToJams < ActiveRecord::Migration
  def change
    add_column :jams, :jam_skill_id, :integer
  end
end
