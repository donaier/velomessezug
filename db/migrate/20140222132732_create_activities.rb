class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
