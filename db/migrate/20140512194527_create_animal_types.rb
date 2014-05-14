class CreateAnimalTypes < ActiveRecord::Migration
  def change
    create_table :animal_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
