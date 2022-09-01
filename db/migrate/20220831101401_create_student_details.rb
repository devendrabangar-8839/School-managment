class CreateStudentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :student_details do |t|
      t.integer :roll_no

      t.timestamps
    end
  end
end
