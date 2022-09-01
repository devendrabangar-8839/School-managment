class CreateTeacherDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_details do |t|
      t.datetime :date_of_birth
      t.integer :salery      

      t.timestamps
    end
  end
end
