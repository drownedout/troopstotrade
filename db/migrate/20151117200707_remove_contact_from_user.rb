class RemoveContactFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :contact, :boolean
  end
end
