class RemoveConfirmedSentAtfromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :confirmed_sent_at, :datetime
  end
end
