class RemovePhoneNumberFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :phonenumber, :integer
  end
end
