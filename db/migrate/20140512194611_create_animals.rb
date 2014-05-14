class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :description

      t.timestamps
    end
  end
end
