class CreateUserWorkplaces < ActiveRecord::Migration
  def change
    create_table :user_workplaces do |t|
      t.integer :user_profiles_id
      t.integer :workplaces_id
      t.string :Name
      t.integer :DoctorCount

      t.timestamps
    end
  end
end
