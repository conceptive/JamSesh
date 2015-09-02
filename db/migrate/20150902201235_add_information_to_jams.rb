class AddInformationToJams < ActiveRecord::Migration
  def change
    add_column :jams, :information, :text
  end
end
