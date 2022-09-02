class CreateClassDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :class_details do |t|
      t.string :sixth
      t.string :seventh
      t.string :eighth
      t.string :nineth
      t.string :tenth
      t.timestamps
    end
  end
end
