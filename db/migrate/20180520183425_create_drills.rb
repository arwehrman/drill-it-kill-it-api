class CreateDrills < ActiveRecord::Migration[5.1]
  def change
    create_table :drills do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :level
      t.integer :likes
      t.timestamps
    end
  end
end
