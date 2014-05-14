class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
      t.string  :address1
      t.string  :address2
      t.string  :city
      t.string  :zip
      t.string  :state
      t.integer :country_id


      t.timestamps
    end
  end
end
