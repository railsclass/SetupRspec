class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.integer :day
      t.text :content

      t.timestamps
    end
  end
end
