class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :contact_no
      t.references :contactable, polymorphic: true

      t.timestamps
    end
  end
end
