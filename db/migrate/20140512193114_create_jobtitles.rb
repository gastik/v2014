class CreateJobtitles < ActiveRecord::Migration
  def change
    create_table :jobtitles do |t|
      t.string :description

      t.timestamps
    end
  end
end
