class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.integer :project_id
      t.integer :minutes, default: 0

      t.timestamps
    end
  end
end
