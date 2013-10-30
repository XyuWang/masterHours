class AddMultipleToProject < ActiveRecord::Migration
  def change
    add_column :projects, :multiple, :decimal, default: 1
  end
end
