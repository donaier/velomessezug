class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :link
      t.string :logo
      t.integer :position

      t.timestamps
    end
  end
end
