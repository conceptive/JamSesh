class AddUserInstrumentsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_instruments, :string
  end
end
