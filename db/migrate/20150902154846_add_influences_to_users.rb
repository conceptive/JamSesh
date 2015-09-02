class AddInfluencesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :influences, :text
  end
end
