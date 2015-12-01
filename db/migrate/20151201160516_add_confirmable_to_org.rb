class AddConfirmableToOrg < ActiveRecord::Migration
  
  def up
  	add_column :orgs, :confirmation_token, :string
  	add_column :orgs, :confirmed_at, :datetime

  	add_index :orgs, :confirmation_token, unique: true
  	add_column :orgs, :confirmation_sent_at, :datetime
  	add_column :orgs, :unconfirmed_email, :string
  end

end
