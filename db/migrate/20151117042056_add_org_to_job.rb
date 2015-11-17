class AddOrgToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :org_id, :integer
  end
end
