class CreateTadresses < ActiveRecord::Migration
  def change
    create_table :tadresses do |t|
      t.string :country

      t.timestamps
    end
  end
end
