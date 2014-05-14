class CreateUserAnimals < ActiveRecord::Migration
  def change
    create_table :user_animals do |t|
      t.integer :user_profiles_id
      t.integer :animals_id
      t.integer :load

      t.timestamps
    end
  end
end
