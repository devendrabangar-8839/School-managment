class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :teachers, :teacher_details
  end
end
