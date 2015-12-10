class AddTermsconfirmToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tconfirm, :boolean
  end
end
