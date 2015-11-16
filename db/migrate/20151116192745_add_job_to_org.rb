class AddJobToOrg < ActiveRecord::Migration
  def change
    add_column :orgs, :job, :string
  end
end
