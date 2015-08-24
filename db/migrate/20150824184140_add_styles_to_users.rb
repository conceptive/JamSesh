class AddStylesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :styles, :text
  end
end
