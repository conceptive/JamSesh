class AddMainInstrumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :main_instrument, :string
  end
end
