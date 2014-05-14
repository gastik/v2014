class CreateUserProfessions < ActiveRecord::Migration
  def change
    create_table :user_professions do |t|
      t.integer :jobtitles_id
      t.integer :PracticeSince
      t.integer :roles_id
      t.integer :user_profiles_id

      t.timestamps
    end
  end
end
