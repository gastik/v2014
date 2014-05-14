class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|
      t.integer :types_id
      t.integer :DoctorCount
      t.string :name

      t.timestamps
    end
  end
end
