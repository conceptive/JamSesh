class AddEquipmentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :equipment, :text
  end
end
