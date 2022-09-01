class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.references :teacher_detail, null: false, foreign_key: true
      t.string :hindi
      t.string :english
      t.string :mathes
      t.string :science
      t.string :evm
      t.timestamps
    end
  end
end
