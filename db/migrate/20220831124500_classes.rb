class Classes < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.string :sixth
      t.string :seventh
      t.string :eighth
      t.string :nineth
      t.string :tenth
    end
  end
end
