class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :company
      t.string :city
      t.string :state
      t.string :contactname
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
