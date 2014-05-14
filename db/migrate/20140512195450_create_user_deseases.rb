class CreateUserDeseases < ActiveRecord::Migration
  def change
    create_table :user_deseases do |t|
      t.integer :user_profiles_id
      t.integer :deaseases_id

      t.timestamps
    end
  end
end
