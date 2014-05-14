class CreateDeseases < ActiveRecord::Migration
  def change
    create_table :deseases do |t|
      t.string :description

      t.timestamps
    end
  end
end
