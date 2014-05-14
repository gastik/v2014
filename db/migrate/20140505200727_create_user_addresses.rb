class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.integer :user_profile_id
      t.integer :countries_id
      t.string :City
      t.string :State
      t.string :Zip
      t.string :Address1
      t.string :Address2

      t.timestamps
    end
  end
end
