class CreateUserAnimalTypes < ActiveRecord::Migration
  def change
    create_table :user_animal_types do |t|
      t.integer :user_profiles_id
      t.integer :anymal_types_id
      t.integer :load

      t.timestamps
    end
  end
end
