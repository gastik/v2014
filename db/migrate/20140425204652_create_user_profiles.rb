class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :surname
      t.integer :sex
      t.integer :user_id

      t.timestamps
    end
  end
end
