class AddAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :String
  end
end
