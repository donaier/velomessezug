class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :link
      t.integer :position

      t.timestamps
    end
    add_attachment :suppliers, :logo
  end
end
