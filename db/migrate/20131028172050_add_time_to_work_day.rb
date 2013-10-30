class AddTimeToWorkDay < ActiveRecord::Migration
  def change
    add_column :work_days, :time, :datetime, require: true
  end
end
