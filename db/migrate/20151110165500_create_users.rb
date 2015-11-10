class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phonenumber
      t.string :employmentstatus
      t.string :highesteducation
      t.string :neicertification
      t.string :militarystatus
      t.string :desiredfieldofwork
      t.string :desiredsalary
      t.boolean :contact

      t.timestamps null: false
    end
  end
end
