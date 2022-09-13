class AddClassNameToClassDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :class_details, :class_name, :string
  end
end
