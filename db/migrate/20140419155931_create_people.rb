class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string  :name
      t.string  :surname
      t.integer :user_id
      t.string  :email
      t.integer :yearofbirth
      t.boolean :sex
      t.timestamps
    end
  end
end
